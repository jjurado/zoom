import logging

from xml.etree import ElementTree

from source.common.enum import PredicateType
from source.predicate.health import PredicateHealth
from source.predicate.pred_and import PredicateAnd
from source.predicate.pred_not import PredicateNot
from source.predicate.pred_or import PredicateOr
from source.predicate.process import PredicateProcess
from source.predicate.simple import SimplePredicate
from source.predicate.zkgut import ZookeeperGoodUntilTime
from source.predicate.zkhas_children import ZookeeperHasChildren
from source.predicate.zkhas_grandchildren import ZookeeperHasGrandChildren
from source.predicate.zknode_exists import ZookeeperNodeExists
from source.util.helpers import verify_attribute
from source.util.decorators import catch_exception


class PredicateFactory(object):
    def __init__(self, component_name=None, parent=None, zkclient=None,
                 proc_client=None, system=None, pred_list=None):
        """
        :type component_name: str or None
        :type parent: str or None
        :type zkclient: kazoo.client.KazooClient or None
        :type proc_client: source.client.process_client.ProcessClient
        :type system: source.common.enum.PlatformType
        :type pred_list: list
        """
        self.zkclient = zkclient
        self._proc_client = proc_client
        self._component_name = component_name
        self._parent = parent
        self._system = system
        self._log = logging.getLogger('sent.{0}.pred.factory'
                                      .format(component_name))
        self._pred_list = pred_list

    @catch_exception(Exception)
    def create(self, xmlpart, callback=None):
        """
        :type xmlpart: xml.etree.ElementTree.Element
        :type callback: types.FuncType or None
        """
        # to catch the case where there are no predicates
        if xmlpart is None:
            dummpy_p = SimplePredicate(self._component_name,
                                       parent=self._parent)
            dummpy_p.set_met(True)
            return dummpy_p

        if isinstance(xmlpart, str):
            root = ElementTree.fromstring(xmlpart)
        else:
            root = xmlpart

        ptype = verify_attribute(root, 'type').lower()

        if ptype == 'simple':
            return self._ensure_new(
                SimplePredicate(self._component_name, parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.ZOOKEEPERNODEEXISTS:
            return self._ensure_new(
                ZookeeperNodeExists(self._component_name,
                                    self.zkclient,
                                    verify_attribute(root, 'path'),
                                    parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.ZOOKEEPERHASCHILDREN:
            return self._ensure_new(
                ZookeeperHasChildren(self._component_name,
                                     self.zkclient,
                                     verify_attribute(root, 'path'),
                                     parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.ZOOKEEPERHASGRANDCHILDREN:
            return self._ensure_new(
                ZookeeperHasGrandChildren(self._component_name,
                                          self.zkclient,
                                          verify_attribute(root, 'path'),
                                          parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.ZOOKEEPERGOODUNTILTIME:
            return self._ensure_new(
                ZookeeperGoodUntilTime(self._component_name,
                                       self.zkclient,
                                       verify_attribute(root, 'path'),
                                       parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.PROCESS:
            return self._ensure_new(
                PredicateProcess(self._component_name,
                                 self._proc_client,
                                 verify_attribute(root, 'interval',
                                                  cast=float),
                                 parent=self._parent),
                callback=callback
            )
        elif ptype == PredicateType.HEALTH:
            return self._ensure_new(
                PredicateHealth(self._component_name,
                                verify_attribute(root, 'command'),
                                verify_attribute(root, 'interval',
                                                 cast=float),
                                self._system,
                                parent=self._parent),
                callback=callback
            )

        # below, use recursion to get nested predicates
        elif ptype == PredicateType.NOT:
            for element in root.findall('Predicate'):
                dep = self.create(element, callback=callback)
                return self._ensure_new(
                    PredicateNot(self._component_name, dep)
                )
        elif ptype == PredicateType.AND:
            deps = list()
            for element in root.findall('Operands/Predicate'):
                deps.append(self.create(element, callback=callback))
            return self._ensure_new(
                PredicateAnd(self._component_name, deps)
            )
        elif ptype == PredicateType.OR:
            deps = list()
            for element in root.findall('Operands/Predicate'):
                deps.append(self.create(element, callback=callback))
            return self._ensure_new(
                PredicateOr(self._component_name, deps)
            )
        else:
            self._log.error('Unknown predicate type "{0}". Ignoring'
                            .format(ptype))
            pass

    def _ensure_new(self, new, callback=None):
        """
        Make sure we are not needlessly creating a second predicate with the
        same attributes.
        :type new: one of source.common.predicate.*
        :type callback: types.funcType or None
        :return: one of source.common.predicate.*
        """
        for predicate in self._pred_list:
            if predicate == new:
                del new
                if callback is not None:
                    predicate.add_callback(callback)
                return predicate

        if callback is not None:
            new.add_callback(callback)
        self._pred_list.append(new)
        return new