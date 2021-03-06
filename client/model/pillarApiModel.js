define(
    [
        'knockout',
        'plugins/router',
        'service',
        'jquery',
        'model/saltModel',
        'bindings/uppercase'
    ],
    function(ko, router, service, $, saltModel) {
        return function pillarApiModel(pillarModel) {
            var self = this;
            var domain = ".spottrading.com";
            var pillarURI = "api/pillar/";
            self.saltModel = new saltModel();

            self.api_post_json = function(_assoc, update_salt, ko_array_to_update, data_type) {
                var update_phrase = "";
                var key = "";
                var val = "";
                if (data_type === 'project') {
                    update_phrase = "Created project " + pillarModel.new_project();
                    key = pillarModel.new_project();
                }
                else if (data_type === 'key') {
                    update_phrase = "Created key: " + pillarModel.new_key() + " with value: " + pillarModel.new_value();
                    key = pillarModel.new_key();
                    val = pillarModel.new_value();
                }
                else if (data_type === 'value') {
                    update_phrase = "Updated key: " + pillarModel.selectedKey() + " with value: " + pillarModel.edit_value();
                    key = pillarModel.selectedKey();
                    val = pillarModel.edit_value();
                }

                var _projdata = {
                    "minion": _assoc.name,
                    "data": _assoc.pillar,
                    "username": pillarModel.login.elements.username(),
                    "update_phrase": update_phrase
                };

                $.ajax({
                    type: "POST",
                    url: pillarURI,
                    data: JSON.stringify(_projdata),
                    dataType: 'json'
                })
                    .fail(function(data) {
                        swal("Error", "The data failed to update. Error message: " + data, 'error');
                    })
                    .success(function(data) {
                        self.updateChecked('post');

                        if (update_salt) {
                            self.saltModel.updateMinion(ko_array_to_update, false, 'update', data_type, key, val, pillarModel.selectedProject());
                        }
                    });
            };

            // only used for node creation
            self.api_post = function(type, minion, project) {
                var node = minion + domain;
                var uri = pillarURI + minion + domain;
                var _postdata = {
                    "username": pillarModel.login.elements.username()
                };

                $.ajax({
                    url: uri,
                    data: JSON.stringify(_postdata),
                    type: "POST",
                    dataType: 'json'
                })
                    .fail(function(data) {
                        console.log("failed to create new pillar for a new minion");
                        swal("failed to create", JSON.stringify(data), 'error');
                    })
                    .done(function(data) {
                        swal("Success!", "A new " + type + " has been added.", 'success');
                        self.saltModel.updateMinion(minion + domain, true, 'create', 'node', node, null, null);
                        pillarModel.loadServers();
                    });
            };

            self.api_delete = function(level_to_delete) {
                var num_left = pillarModel.hasProject().length;
                var del_phrase = "";
                ko.utils.arrayForEach(pillarModel.hasProject(), function(_assoc) {
                    var uri = pillarURI + _assoc.name;
                    if (level_to_delete === "project") {
                        uri += "/" + pillarModel.selectedProject();
                        del_phrase = "Deleted project: " + pillarModel.selectedProject();
                    }
                    else if (level_to_delete === "key") {
                        uri += "/" + pillarModel.selectedProject();
                        uri += "/" + pillarModel.selectedKey();
                        del_phrase = "Deleted key: " + pillarModel.selectedKey();
                    }
                    console.log("URI sent to server: " + uri);

                    var _deldata = {
                        "username": pillarModel.login.elements.username(),
                        "del_phrase": del_phrase
                    };
                    $.ajax({
                        url: uri,
                        type: "DELETE",
                        data: JSON.stringify(_deldata)
                    })
                        .fail(function(data) {
                            swal("Failed", "Delete failed", 'error');
                        })
                        .done(function(data) {
                            // if the last one, notify on it only
                            if (num_left === 1) {
                                swal("Success", "Successfully deleted", 'success');
                                self.saltModel.updateMinion(pillarModel.hasProject, false, 'delete', level_to_delete, null, null, pillarModel.selectedProject());
                            }
                            num_left--;

                            if (level_to_delete === 'key') {
                                self.updateChecked(level_to_delete);
                                pillarModel.selectedKey(null);
                            }
                            else { //project
                                self.updateChecked(level_to_delete);
                                pillarModel.selectedProject(null);
                            }
                        });
                });
            };

            self.delPillar = function() {
                swal({
                        title: "Confirm",
                        text: "Are you sure you want to delete " + pillarModel.checked_servers().length + " servers and ALL of their zookeeper pillar data?",
                        showCancelButton: true,
                        confirmButtonText: "Yes"
                    },
                    function(isConfirm) {
                        if (isConfirm) {
                            var left = pillarModel.checked_servers().length;
                            ko.utils.arrayForEach(pillarModel.checked_servers(), function(_assoc) {
                                var uri = pillarURI + _assoc.name;

                                var _deldata = {
                                    "username": pillarModel.login.elements.username(),
                                    "del_phrase": "Deleted server node: "
                                };

                                $.ajax({
                                    url: uri,
                                    type: "DELETE",
                                    data: JSON.stringify(_deldata)
                                })
                                    .fail(function(data) {
                                        swal("Delete Failed", "Failed to delete pillar(s)", 'error');
                                    })
                                    .done(function(data) {
                                        if (left === 1) {
                                            swal("Delete successful", "Pillar(s) deleted", 'success');
                                            pillarModel.loadServers();
                                            self.saltModel.updateMinion(pillarModel.checked_servers, false, 'delete', 'node', null, null, null);
                                        }
                                        left--;
                                    });
                            });
                        }
                    });
            };

            self.updateChecked = function(data_type) {
                // maintain previously selected project even after updating
                var prevSelect = pillarModel.selectedProject();
                ko.utils.arrayForEach(pillarModel.checked_servers(), function(_alloc) {
                    $.ajax({
                        url: pillarURI + _alloc.name,
                        type: "GET"
                    })
                        .fail(function(data) {
                            swal("Error", "There was an error retrieving SELECTED pillar data", 'error');
                        })
                        .done(function(data) {
                            // set in API, makes sure that we delete when a minion no longer exists.
                            if (data.DOES_NOT_EXIST) {
                                pillarModel.allInfo.remove(_alloc);
                                pillarModel.checked_servers.remove(_alloc);
                            }
                            else {
                                var index = pillarModel.allInfo.indexOf(_alloc);
                                _alloc.pillar = data;

                                pillarModel.allInfo.replace(pillarModel.allInfo()[index], _alloc);
                                pillarModel.refreshTable(_alloc);
                            }

                            pillarModel.selectedProject(prevSelect);

                            //update selected data if necessary
                            if (data_type === 'project') {
                                pillarModel.selectedProject(null);
                                pillarModel.selectedKey(null);
                            }
                            else if (data_type === 'key') {
                                pillarModel.selectedKey(null);
                            }
                        });

                });

            };

            self.getPillar = function(objOrName, create_new) {
                //TODO: error handling for http get
                var uri;
                if (create_new) {
                    uri = pillarURI + objOrName;
                }
                else {
                    uri = pillarURI + objOrName.name;
                }

                $.get(uri, function() {
                })
                    .fail(function(data) {
                        swal("Error", "There was an error retrieving pillar data", 'error');
                    })
                    .done(function(data) {
                        if (create_new) {
                            var entry = new pillarModel._assoc(objOrName, data);
                            pillarModel.objProjects(entry);
                            pillarModel.allInfo.push(entry);
                        }
                        else {
                            var indexAll = pillarModel.allInfo.indexOf(objOrName);
                            var indexChecked = pillarModel.checked_servers.indexOf(objOrName);
                            objOrName.pillar = data;
                            pillarModel.objProjects(objOrName);
                            pillarModel.allInfo.replace(pillarModel.allInfo()[indexAll], objOrName);
                            if (indexChecked !== -1) {
                                pillarModel.checked_servers.replace(pillarModel.checked_servers()[indexChecked], objOrName);
                            }
                            //update in checked_servers as well as allInfo
                        }
                    });
            };

        };
    }
);