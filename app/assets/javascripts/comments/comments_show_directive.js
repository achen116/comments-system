'use_strict';

angular.module('app')

.directive('commentsShow', [function() {
  return {
    templateUrl: 'comments/comments_show.html',
    restrict: 'E',
    controllerAs: 'ctrl',
    controller: ['CommentsService', function(CommentsService) {
    	this.CommentsService = CommentsService

    	this.CommentsService.api.get().$promise.then(function(response) {
    		this.CommentsService.comments = response.comments
    	}.bind(this))
    }]
  }
}]);
