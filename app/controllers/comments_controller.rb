class CommentsController < ApplicationController
	def index
		@comments = Comment.where(parent_comment: nil)
	end

	def create
		@user 	 = new_user
		@comment = new_comment

		if @user.save
			@comment.user = @user

			return if @comment.save
			render_errors
		else
			render_errors
		end
	end

	private

	def new_user
		User.new(name: comment_params[:user])
	end

	def new_comment
		Comment.new(
			description: comment_params[:description],
			parent_comment_id: comment_params[:parent_comment_id]
		)
	end

	def comment_params
		params.permit(
			:description,
			:user,
			:parent_comment_id
		)
	end

	def render_errors
		render json: {
			errors: @comment.errors.full_messages
		}, status: :unprocessable_entity
	end
end