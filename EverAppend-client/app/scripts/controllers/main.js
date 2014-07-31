'use strict';

/**
 * @ngdoc function
 * @name everAppendClientApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the everAppendClientApp
 */
angular.module('everAppendClientApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
