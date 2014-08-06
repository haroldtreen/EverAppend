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

    var authWindow;
    var returnedValue= 'nope :(';
    var frm;

    $scope.authEvernote = function(){
			authWindow = window.open('http://localhost:3000/users/auth/evernote', '_blank', 'height=800,width=200');


			setInterval(function(){
				authWindow.postMessage('HOLLA!', 'http:localhost:3000/');
			}, 500);
  		// frm = document.createElement("iframe");
    //   frm.src = 'http://localhost:3000/evernote-auth';
    //   frm.width = 0;
    //   frm.height = 0;
    //   frm.frameBorder = 0;
    //   frm.style.visibility = "hidden";

      // document.body.appendChild(frm);

      window.addEventListener('message', function() { console.log("BOOM!") }, false);
    };

    window.domain = 'http://localhost:9000'

    $scope.printWindow = function(){
    	console.log(returnedValue);

    	// frm.contentWindow.postMessage("MESSAGE!", 'http://localhost:3000');
    	authWindow.postMessage('HOLLA!', 'http:localhost:3000/');
    };
  }]);
