class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)

		return if @comment.save
		render_errors
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