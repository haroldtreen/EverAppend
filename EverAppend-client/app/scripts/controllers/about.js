'use strict';

/**
 * @ngdoc function
 * @name everAppendClientApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the everAppendClientApp
 */
angular.module('everAppendClientApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
