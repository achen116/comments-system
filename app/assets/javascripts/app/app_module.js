'use strict';

(function() {
  angular.module('app', ['ui.router', 'ngResource', 'templates'])
    .config(function($httpProvider) {
      // for CSRF Errors
      $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    });
}());