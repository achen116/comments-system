class CommentsController < ApplicationController
	def create
		@user 	 = User.new(name: comment_params[:user])
		@comment = Comment.new(description: comment_params[:description])

		if @user.save
			@comment.user = @user

			return if @comment.save
			render_errors
		else
			render_errors
		end
	end

	private

	def comment_params
		params.permit(
			:description,
			:user
		)
	end

	def render_errors
		render json: {
			errors: @comment.errors.full_messages
		}, status: :unprocessable_entity
	end
end