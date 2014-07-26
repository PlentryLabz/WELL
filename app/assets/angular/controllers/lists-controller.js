'use strict'

var App = angular.module('app');

App.controller('ListsCtrl', function(Lists, $scope) {

	$scope.model = {}

	$scope.init = function (id) {
		this.model.lists = Lists.query({ user_id : id})
	}
});