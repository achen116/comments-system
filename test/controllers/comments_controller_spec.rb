require './test/test_helper'

describe CommentsController, type: :controller do
	describe '#create' do
		context 'all required fields are included' do
			# it 'saves a new comment record' do
			# 	expect do
			# 		post :create, params: { description: 'hello world' }
			# 	end.to change(User, :count).by(1)
			# end
		end

		context 'some required fields are blank' do
			# it 'returns an error' do
			# end
		end
	end
end