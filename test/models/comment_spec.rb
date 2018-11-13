require './test/test_helper'

describe Comment, type: :model do
	context 'user is blank' do
		it 'fails validation' do
			comment_without_user = Comment.create(description: 'no user')

			expect(comment_without_user.valid?).to be_falsey
			expect(comment_without_user.errors[:user].first).to eq('can\'t be blank')
		end
	end

	context 'description is blank' do
		it 'fails validation' do
			user = User.create(name: 'Ace')
			comment_without_description = Comment.create(user: user)

			expect(comment_without_description.valid?).to be_falsey
			expect(comment_without_description.errors[:description].first).to eq('can\'t be blank')
		end
	end
end