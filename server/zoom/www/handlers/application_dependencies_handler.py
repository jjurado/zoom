import json
import logging
import httplib
import tornado.web

from zoom.common.decorators import TimeThis


class ApplicationDependenciesHandler(tornado.web.RequestHandler):

    @property
    def data_store(self):
        """
        :rtype: zoom.www.cache.data_store.DataStore
        """
        return self.application.data_store

    @TimeThis(__file__)
    def get(self, path):
        logging.info('Retrieving Application Dependency Cache for client {0}'
                     .format(self.request.remote_ip))
        try:
            result = self.data_store.load_application_dependency_cache()
            if path:
                item = result.application_dependencies.get(path, {})
                self.write(item)
            else:
                self.write(result.to_json())

        except Exception as e:
            logging.exception(e)
            self.set_status(httplib.INTERNAL_SERVER_ERROR)
            self.write(json.dumps({'errorText': str(e)}))

        self.set_header('Content-Type', 'application/json')
        logging.info('Done Retrieving Application Depends Cache')
