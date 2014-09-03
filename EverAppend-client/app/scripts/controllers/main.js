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

    $scope.authWindow = {};
    var returnedValue= 'nope :(';
    $scope.frm = {};

    $scope.authEvernote = function(){
			// $scope.authWindow = window.open('http://localhost:3000/auth/evernote', '_blank', 'height=800,width=200');


			// setInterval(function(){
			// 	authWindow.postMessage('HOLLA!', 'http:localhost:3000/');
			// }, 500);

  		$scope.frm = document.createElement("iframe");
      $scope.frm.src = 'http://localhost:3000/auth/evernote';
      $scope.frm.width = 500;
      $scope.frm.height = 500;
      $scope.frm.frameBorder = 0;
      // frm.style.visibility = "hidden";

      document.body.appendChild($scope.frm);

      $scope.frm.addEventListener('message', function() { console.log("BOOM!") }, false);
    };

    $scope.printWindow = function(){
    	console.log(returnedValue);

    	// frm.contentWindow.postMessage("MESSAGE!", 'http://localhost:3000');
    	authWindow.postMessage('HOLLA!', 'http:localhost:3000/');
    };
  }]);
