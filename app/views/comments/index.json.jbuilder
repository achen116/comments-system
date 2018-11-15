json.comments @comments.order(created_at: :desc) do |comment|
	json.description comment.description
	json.user    		 comment.user.name
	json.created_at  time_ago_in_words(comment.created_at)
end