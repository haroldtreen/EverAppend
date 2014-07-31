'use strict';

/**
 * @ngdoc function
 * @name everAppendClientApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the everAppendClientApp
 */
angular.module('everAppendClientApp')
  .controller('MainCtrl', ['$scope', '$resource', function ($scope, $resource) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.authEvernote = function(){
    	OAuth.initialize('');

    	OAuth.popup('evernote_sandbox').done(function(result) {
		    console.log(result);
			});
    };
  }]);
