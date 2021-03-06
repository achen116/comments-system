'use_strict';

angular.module('app')

.directive('commentsNew', [function() {
  return {
    templateUrl: 'comments/comments_new.html',
    restrict: 'E',
    scope: {
      comment: '=',
      parentComment: '='
    },
    controllerAs: 'ctrl',
    controller: ['$scope', 'CommentsService', function($scope, CommentsService) {
      this.comment       = $scope.comment // comment form input
      this.parentComment = $scope.parentComment

      this.saveComment = function() {
        // Assign parent comment to new child comment
        if(this.parentComment !== undefined) {
          this.comment.parent_comment_id = this.parentComment.id
        }

        // Save comment to database
        CommentsService.api.save(this.comment).$promise.then(function(response) {
          // Add new comment to parent or child collection
          if(this.parentComment !== undefined) {
            if(this.parentComment.parent_comment_id) {
              // If parent comment is a child comment, add to second child comment collection
              this.parentComment.second_child_comments.unshift(response)
            } else {
              // Otherwise, add to child comment collection
              this.parentComment.child_comments.unshift(response)
            }

            // Hide reply form
            this.parentComment.showReplyForm = false
          } else {
            CommentsService.comments.unshift(response)
          }
        }.bind(this))


        // Reset comment form
        this.comment = {}
      }
    }]
  }
}]);
