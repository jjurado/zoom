define(['knockout'],
function(ko){
return function Predicate(Factory) {
    var self = this;
    self.expanded = ko.observable(false);
    self.predType = ko.observable(null);
    self.interval = ko.observable(null);
    self.command = ko.observable(null);
    self.path = ko.observable(null);

    self.title = ko.computed(function(){
        return "Predicate " + self.predType() + " " + self.path();
    });

    self.error = ko.computed(function(){
        //TODO Flag errors that aren't empty field
        return "";
    });

    self.remove = function(){
        self.parent.predicates.remove(self);
    };

    self.expandUp = function(){
        self.expanded(true);
        self.parent.expandUp();
    };
    self.validate = function() {
        var valid = true;
        if(self.error() != ""){
            valid = false;
        }
        if(self.predType() == null){
            valid = false;
        }
        if(!valid){
            self.expandUp();
        }
        return true;
    };

    self.createPredicateXML = function() {
        var XML = '<Predicate ';
        XML = XML.concat('type="'+self.predType()+'" ');

        if(self.path() != null){
            XML = XML.concat('path="'+self.path()+'" ');
        }
        if(self.interval() != null){
            XML = XML.concat('interval="'+self.interval()+'" ');
        }
        if(self.command() != null){
            XML = XML.concat('command="'+self.command()+'" ');
        }
        XML = XML.concat('></Predicate>');

        return XML;
    };

    self.loadXML = function(node){
        self.predType(node.getAttribute('type'));
        self.interval(node.getAttribute('interval'));
        self.command(node.getAttribute('command'));
        self.path(node.getAttribute('path'));
    }
}});
