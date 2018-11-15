json.comments @comments.order(created_at: :desc) do |comment|
	json.id 				 		comment.id
	json.description 		comment.description
	json.user    		 		comment.user.name
	json.created_at  		time_ago_in_words(comment.created_at)

	json.child_comments comment.child_comments.order(created_at: :desc) do |child_comment|
		json.id 				 			 child_comment.id
		json.parent_comment_id child_comment.parent_comment_id
		json.description 			 child_comment.description
		json.user 			 			 child_comment.user.name
		json.created_at  			 time_ago_in_words(child_comment.created_at)

		json.second_child_comments child_comment.child_comments.order(created_at: :desc) do |second_child_comment|
			json.id 				 			 second_child_comment.id
			json.parent_comment_id second_child_comment.parent_comment_id
			json.description 			 second_child_comment.description
			json.user 			 			 second_child_comment.user.name
			json.created_at  			 time_ago_in_words(second_child_comment.created_at)
		end
	end
end