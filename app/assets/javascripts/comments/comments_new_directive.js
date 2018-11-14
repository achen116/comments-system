'use_strict';

angular.module('app')

.directive('commentsNew', [function() {
  return {
    templateUrl: 'comments/comments_new.html',
    restrict: 'E',
    scope: {
      comment: '='
    },
    controllerAs: 'ctrl',
    controller: ['$scope', 'CommentsService', function($scope, CommentsService) {
    	this.comment = $scope.comment

      this.saveComment = function() {
      	CommentsService.api.save(this.comment)
      }
    }]
  }
}]);
