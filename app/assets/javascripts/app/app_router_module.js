'use strict';

(function() {
	angular.module('app')
	  .config(function($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('index', {
        	url: '',
          templateUrl: 'index/index.html',
          controller: 'IndexController as indexCtrl'
        })

      // Redirect unspecified routes to home page
      $urlRouterProvider.otherwise('/');
	  });
}());