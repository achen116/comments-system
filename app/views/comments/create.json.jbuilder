json.(@comment, :id, :parent_comment_id, :description)
json.user 			@comment.user.name
json.created_at time_ago_in_words(@comment.created_at)

if @comment.parent_comment_id
	json.second_child_comments @comment.child_comments
else
	json.child_comments @comment.child_comments
end