'use_strict';

angular.module('app')

.factory('CommentsService', ['$resource', function($resource) {
  return {
    api: $resource('/comments', {
      create: {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
      }
    }),

    comments: []
  }
}]);
