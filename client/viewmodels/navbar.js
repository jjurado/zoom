﻿define(['plugins/router', 'durandal/app', 'jquery', 'knockout', 'service', 'model/loginModel', 'bootstrap' ], function (router, app, $, ko, service, login ) {


    return {
        router: router,
        login: login,
        isFAQ: function(title){
                if(title.search("FAQ") != -1){
                    return true;
                }
                else{
                    return false;
                }
            },
        activate: function () {
            router.map([
                { route: '', title: "Application State", moduleId: 'viewmodels/applicationState', nav: true },
                { route: 'config', title: "Server Config", moduleId: 'viewmodels/serverConfig', nav: true },
                { route: 'appFAQ', title: "App State FAQ", moduleId: 'viewmodels/faq/applicationState', nav: true },
                { route: 'configFAQ', title: "Server Config FAQ", moduleId: 'viewmodels/faq/serverConfig', nav: true }
            ]).buildNavigationModel();
            
            return router.activate();
        }
    };
});