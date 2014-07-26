'use strict'

/*
    This is our main launch point from Angular. We'll put anything to do with the
    general well being of our app in this file. For now it'll basically just contain
    the routing information.

    Our module will be called 'app'.
 */

var App =  angular.module('app', ['ngRoute', 'ngResource', 'app.loading']);

App.config(function($routeProvider) {
        $routeProvider
        .when('/', { 
        	templateUrl: 'lists', 
        	controller: 'ListsCtrl'
        })
});