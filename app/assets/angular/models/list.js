'use strict'

var App = angular.module('app');

App.factory('Lists', function($resource) {

    var lists = $resource('http://localhost:3000/api/v1/lists/');

    return lists;
  });