class UsersController < ApplicationController
	def create
		@user = User.new(user_params)

		return if @user.save
		render_errors
	end

	private

	def user_params
		params.permit(:name)
	end

	def render_errors
		render json: {
		  errors: @user.errors.full_messages
		}, status: :unprocessable_entity
	end
end