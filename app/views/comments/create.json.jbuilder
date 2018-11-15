json.(
	@comment,
	:id,
	:parent_comment_id,
	:description,
	:created_at
)
json.user 					@comment.user.name
json.child_comments @comment.child_comments

@comment.child_comments.each do |child_comment|
	json.second_child_comments child_comment.child_comments
end