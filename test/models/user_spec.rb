require './test/test_helper'

describe User, type: :model do
	it 'fails validation if name is blank' do
		invalid_user = User.create()

		expect(invalid_user.valid?).to be_falsey
		expect(invalid_user.errors[:name].first).to eq('can\'t be blank')
	end
end