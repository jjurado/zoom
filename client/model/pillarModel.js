define( [
        'knockout',
        'plugins/router',
        'service',
        'jquery',
        'model/environmentModel',
        'model/adminModel',
        'model/GlobalMode',
        'model/customFilterModel',
        'bindings/uppercase',
    ],
    function(ko, router, service, $,  environment, admin, GlobalMode,
             CustomFilterModel) {
        return function pillarModel() {
    
            var self = this;

            self.servers = ko.observableArray([]);
            self.allInfo = ko.observableArray([]);//.extend({rateLimit: 100});
            self.checked_servers = ko.observableArray([]).extend({rateLimit: 100});
            self.show_allInfo = ko.observableArray([]);
            self.allProjects = ko.observableArray([]);
            self.allKeys= ko.observableArray([]);

            self.searchVal = ko.observable(""); 
            self.fieldOneVal = ko.observable("").extend({uppercase: true});
            self.selectedOption = ko.observable("Modify Pillar(s)").extend({rateLimit: 100});
            self.selectedProject = ko.observable("").extend({notify: "always"});
            self.selectedKey = ko.observable("").extend({notify: "always"});
            self.new_key = ko.observable("");
            self.new_value = ko.observable("");
            self.new_project = ko.observable("");
            self.edit_value = ko.observable("");
            self.checked_missing = ko.observable("");
            self.selectedModify = ko.observable("Existing project");

            self.pillarOptions = ko.observableArray(["Modify Pillar(s)", "Create Pillar", "Delete Pillar(s)", "View Pillar(s)"]);
            self.modifyOptions = ko.observableArray(["Existing project", "New project"]);
            self.new_pairs = ko.observableArray([{"key": "subtype", "value": ""}, {"key": "version", "value": ""}]); 
            self.domain = ".spottrading.com";

            function _proj(subtype, version){
                self.subtype = subtype;
                self.version = version;
            };

            function _assoc(server_name, pillar_data) {
                var self = this;
                self.name = server_name;
                self.pillar = pillar_data;
                self.checked = ko.observable(false);
                self.prior = false;
                self.projects = new Object();
                // _assoc object also has dynamically created 
            };

            $(document).on('change keyup keydown paste cut', '.textarea', function() {
                $(this).height(0).height(this.scrollHeight);
            }).find('textarea').change();

            $(document).on('click', '#allDrop', function() {
                self.selectedProject($(this).text());
                // reset so it can be calculated for the new project
                self.allKeys([]);
            });

            $(document).on('click', '#allKey', function() {
                self.selectedKey($(this).text());
            });

            self.toggleSearch = function() {
                $('#searchPane').toggle(200);
            };

            self.removeQuery = function () {
                self.searchVal("");
            };

            self.addPair = function() {
                self.new_pairs.push({"key": "", "value": ""});
            };

            self.subtype_get = function (data, field) {
                if (typeof self.selectedProject() === 'undefined' || self.selectedProject() === null)
                    return "Select a project";
                try {
                    return data.projects[self.selectedProject()]()[field];
                } catch(err) {
                    if (err.name === 'TypeError')
                        return "Project Does Not Exist";
                    else
                        return "An unexpected error occured";
                }
            };

            self.refreshTable = function(_assoc) {
                self.allKeys([]);
                self.allProjects([]);
                self.addProjects(_assoc);
            };

            self.JSONcreateProject = function (_assoc) {
                var proj_name = self.new_project();
                var pairs = {};
                ko.utils.arrayForEach(self.new_pairs(), function(pair) {
                    pairs[pair.key] = pair.value;
                });

                _assoc.pillar[self.new_project()] = pairs;
            };

            self.JSONupdateProject = function (_assoc) {
                _assoc.pillar[self.selectedProject()][self.new_key()] = self.new_value();
            };

            self.uncheckAll = function() {
                ko.utils.arrayForEach(self.allInfo(), function(_assoc) {
                    _assoc.checked(false);
                });
            };
            
            // Does not work, performance issues
            
            self.checkAll= function(check) {
                if (self.show_allInfo().length > 8){
                    swal("Sorry", "Please narrow-down your search results to less than 8 visible servers.", 'Error');
                    return;
                }
                var arrayCopy = self.show_allInfo();
                for(var inc = 0; inc < arrayCopy.length; inc++){
                    arrayCopy[inc].checked(true);
                };
                self.show_allInfo(arrayCopy);
                self.show_allInfo.valueHasMutated();
            };

            self.salt_minion_update = function () {
                var cmds = {
                    'client': 'local',
                    'tgt': '*',
                    //'fun': 'test.ping',
                    'fun': 'saltutil.refresh_pillar',
                    'username': 'salt',
                    'password': 'salt',
                    'eauth': 'pam'
                }
                $.ajax({
                    url: "http://saltStaging:8000/run",
                    type: 'POST',
                    data: cmds,
                    //headers: {'Accept': 'Application/json'}
                })
                .fail(function(data) {
                    console.log("Failed to login to salt master");
                })
                .success(function(data) {
                    console.log("Success " + data.return[0]);
                });

            };
           
                
            self.api_put = function (type, data) {
                var left = self.checked_servers().length;
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    var uri = "api/pillar/" + _assoc.name + "/" + self.selectedProject() + "/" + type + "/" + data;

                    $.ajax({
                        url: uri,
                        type: "PUT",
                    })
                    .fail(function(data) {
                        self.updateChecked();
                        console.log("failed to update data");
                    })
                    .done(function(data) {
                        if (left === 1) {
                            self.updateChecked();
                            swal("Success!", "Your data has been updated on the selected servers", 'success');
                        }
                        left--;
                        
                    });
                });
            };

            self.api_post_json = function (type, _assoc, project) {
                
                var _projdata = {
                    "minion": _assoc.name, 
                    "data": _assoc.pillar
                };

                var uri = "api/pillar/"
                console.log(JSON.stringify(_projdata));

                $.ajax({
                    type: "POST",
                    url: uri,
                    data: JSON.stringify(_projdata),
                    dataType: 'json',
                })
                .fail(function(data) {
                    console.log(data);
                    console.log("pure json failed");
                })
                .success(function(data) {
                    console.log("pure json success!");
                    self.updateChecked();
                    self.salt_minion_update();
                })
            };
            
            // calls create minion from api
            self.api_post = function (type, minion, project) {
                var uri = "api/pillar/" + minion;
                if (type === "project")
                    uri += "/" + project;
                else
                    uri += self.domain;

                $.post(uri, function(){
                })
                .fail(function(data) {
                    console.log("failed to create new pillar for a new minion");
                    swal("failed to create", JSON.stringify(data), 'error');
                })
                .done(function(data) {
                    swal("Success!", "A new " + type + " has been added.", 'success');
                    console.log("succeeded making new pillar");
                    if (type === "project") self.updateChecked();
                    else if (type === "pillar") self.loadServers();
                });
            };

            self.api_delete = function(level_to_delete) {
                var response = confirm("Delete project for " + self.checked_servers().length + " servers?");
                if (response) {
                    var num_left = self.checked_servers().length;
                    ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                        var uri = "api/pillar/" + _assoc.name;
                        if (level_to_delete === "project" || level_to_delete === "key")
                            uri += "/" + self.selectedProject();
                        if (level_to_delete === "key")
                            uri += "/" + self.selectedKey();
                        console.log("URI sent to server: " + uri);
                        $.ajax({
                            url: uri,
                            type: "DELETE",
                        })
                        .fail(function(data) { 
                            console.log("failed to delete the server(s)" + data);
                            swal("Failed", "Delete failed", 'error'); 
                        })
                        .done(function(data) { 
                            // if the last one, notify on it only
                            if (num_left === 1) swal("Success", "Successfully deleted", 'success'); 
                            num_left--;
                            console.log("delete successful");
                            //var message = "Successfully deleted ";

                            if (level_to_delete === 'pillar'){
                            //    message+=_assoc.name
                                self.loadServers();
                            }
                            else if (level_to_delete === 'key'){
                                self.updateChecked();
                                self.selectedKey(null);
                            }
                            else { //project
                                self.updateChecked();
                                self.selectedProject(null);
                            }
                        });
                    });
                }
                else return;
            };

            /*
            self.checkIfAllHaveProject = ko.computed(function() {
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    if (_assoc.projects[self.selectedProject()] !== "undefined") {
                        self.checked_missing(true);
                        return;
                    }
                })
                self.checked_missing(false);
            });
            
            self.deleteProjectWrapper = function(data) {
            };*/

            self.switchViewToProject = function (project_name) {
                if (typeof project_name === 'undefined')
                    console.log("no project");
                else { 
                    self.selectedProject(project_name);
                    self.selectedModify("Existing project");
                }
            };

            self.createProjectWrapper = function(data) {
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    if (typeof _assoc.projects[data] !== "undefined"){
                        alert("project already exists on " + _assoc.name);
                    }
                    else
                        self.JSONcreateProject(_assoc);
                        self.api_post_json("project", _assoc, data);
                        self.switchViewToProject(data);
                });
            };

            self.newPairWrapper = function(data) {
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    self.JSONupdateProject(_assoc);
                    self.api_post_json("project", _assoc, data);
                });
            };

            /*  
            self.updateProjectWrapper = function(data) {
                var missingProject = [];
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    if (typeof _assoc.projects[data] === "undefined"){
                        missingProject.push(_assoc);
                    }
                });

                if (missingProject.length > 0) {
                    swal({
                        title: "Hmm...",
                        text: missingProject.length + " server(s) are missing this project, create the project on these servers as well?",
                        showCancelButton: true,
                        confirmButtonText: "Yes"
                    }, 
                    function(isConfirm){
                        for (var each in missingProject){
                            self.api_post("project", missingProject[each].name, self.selectedProject());
                        }
                    });
                }
            };*/

            self.addProjects = function(_assoc) {
                for (var each in _assoc.pillar){
                    if (self.allProjects.indexOf(each) < 0){
                        //console.log(each);
                        self.allProjects.push(each);
                    }
                }
                try { 
                    for (var each in _assoc.pillar[self.selectedProject()]){
                        if (self.allKeys.indexOf(each) < 0){
                            self.allKeys.push(each);
                        }
                    }
                } catch(err) {
                    if (err.name === "TypeError")
                        console.log("Race condition, not an issue");
               
                }

            };

                
            self.objProjects = function (_assoc) {
                //delete existing!!!
                _assoc.projects = [];
                for (var each in _assoc.pillar){
                    _assoc.projects[each] = ko.observable("");
                    _assoc.projects[each](_assoc.pillar[each]);
                }
            };

            self.updateChecked2 = function () {
                ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                    self.addProjects(_assoc);
                    self.objProjects(_assoc);
                });
            };

            self.resetFields = function () {
                self.selectedProject(null);
                self.new_project("");
                self.new_key("");
                self.new_value("");
                self.allKeys([]);
            } 

            self.checked_server_data = ko.computed(function() {
                ko.utils.arrayForEach(self.allInfo(), function(_assoc) {
                    if (_assoc.checked()){
                        if (!_assoc.prior){
                            self.addProjects(_assoc);
                            self.checked_servers.push(_assoc);
                            _assoc.prior = true;
                        }
                        else {
                            self.allProjects([]);
                            ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                                 self.addProjects(_assoc);
                                 self.objProjects(_assoc);
                            });
                        }
                    }
                    else if (!_assoc.checked()) {
                        if (_assoc.prior){
                            // remove from the array based on the server name
                            self.checked_servers.remove(_assoc);
                            //TODO: remove all each time and re-calculate based on what is now selected
                            self.allProjects([]);
                            ko.utils.arrayForEach(self.checked_servers(), function(_assoc) {
                                self.addProjects(_assoc);
                            });

                            _assoc.prior = false;
                            //if this is the last to be un-checked, reset all fields
                            if (self.checked_servers().length == 0){
                                self.resetFields();
                            }
                        }
                    }
                });
            });

            self.show_allInfo = ko.computed(function() {
                var query = self.searchVal().toLowerCase();
                if (query === ""){
                    return self.allInfo();
                }
                return ko.utils.arrayFilter(self.allInfo(), function(_assoc) {
                    //TODO: is this necessary?
                    try {
                        //return if the project exists
                        for (var each in _assoc.projects){
                            if (each.toLowerCase().indexOf(query) >= 0){
                                return _assoc;
                            }
                        }
                    } catch (err){
                        if (err.type === "TypeErr"){
                            console.log("Proj DNE");
                        }
                        else {
                            console.log(err);
                        }
                    } 

                    return _assoc.name.toLowerCase().indexOf(query) >= 0;
                });
            }, self);


            
            self.updateAllAdditions = function() {
                ko.utils.arrayForEach(self.servers(), function (server_name) {
                    var serverAlreadyExists = false;
                    //console.log(server_name);
                    ko.utils.arrayForEach(self.allInfo(), function (_assoc) {
                        if (server_name === _assoc.name) {
                            self.getPillar(_assoc, false)
                            serverAlreadyExists = true;
                        }
                    });
                    if (serverAlreadyExists === false){
                        self.getPillar(server_name, true);
                        //get pillar and create new _assoc object, push onto allInfo
                    }
                });
            };

            self.updateAllDeletions = function() {
                ko.utils.arrayForEach(self.allInfo(), function (_assoc) {
                    var serverAlreadyExists = false;
                    //TODO: getting undefined here for some reason????
                    if (typeof _assoc !== "undefined"){
                        ko.utils.arrayForEach(self.servers(), function (name) {
                            if (_assoc.name === name)
                                serverAlreadyExists = true;
                        });
                        if (!serverAlreadyExists)
                            self.allInfo.remove(_assoc);
                    }
                });
            };
                            
            
            self.updateChecked = function () {
                // maintain previously selected project even after updating
                var prevSelect = self.selectedProject();
                ko.utils.arrayForEach(self.checked_servers(), function (_alloc) {
                    $.ajax({
                        url: "api/pillar/" + _alloc.name,
                        type: "GET",
                    })
                    .fail(function(data) {
                        console.log(data);
                        swal("Error", "There was an error retrieving SELECTED pillar data", 'error');
                    })
                    .done(function(data) {
                        console.log(data);
                        // set in API, makes sure that we delete when a minion no longer exists.
                        if (data.DOES_NOT_EXIST){
                            self.allInfo.remove(_alloc);
                            self.checked_servers.remove(_alloc);
                        }
                        else {
                            var index = self.allInfo.indexOf(_alloc);
                            var index2 = self.checked_servers.indexOf(_alloc);
                            _alloc.pillar = data;

                            console.log(_alloc.name); 

                            self.allInfo.replace(self.allInfo()[index], _alloc);
                            self.refreshTable(_assoc);
                            //self.checked_servers.replace(self.allInfo()[index2], _alloc);
                            //self.updateChecked2();

                        }
                                                
                        self.selectedProject(prevSelect);
                    });

                });

            };

            self.getPillar = function(objOrName, create_new) {
                //TODO: error handling for http get
                    var uri = "api/pillar/";
                    if (create_new) uri += objOrName;
                    else uri += objOrName.name;

                    $.get(uri, function (){
                    })
                    .fail(function(data) {
                        console.log(data);
                        swal("Error", "There was an error retrieving pillar data", 'error'); 
                    })
                    .done(function(data) {
                        if (create_new){
                            var entry = new _assoc(objOrName, data);
                            if (entry.name === "JACK6.spottrading.com"){
                                console.log("it");
                            }
                            self.objProjects(entry);  
                            self.allInfo.push(entry);
                        }
                        else {
                            var indexAll = self.allInfo.indexOf(objOrName);
                            var indexChecked = self.checked_servers.indexOf(objOrName);
                            objOrName.pillar = data;
                            self.objProjects(objOrName);
                            self.allInfo.replace(self.allInfo()[indexAll], objOrName);
                            if (indexChecked !== -1){
                                self.checked_servers.replace(self.checked_servers()[indexChecked], objOrName);
                            }
                            //update in checked_servers as well as allInfo
                        }
                    });
            };

            var onSuccess = function (data) { 
                console.log(data);
                self.servers(data);
                self.updateAllAdditions();
                self.updateAllDeletions();
                self.updateChecked();
            };
            
            var onFailure = function() {
                console.log('failed to get list of servers');
            };

            self.loadServers = function () {
                service.get('api/pillar/list_servers/', onSuccess, onFailure);
            };   
        };
    });
