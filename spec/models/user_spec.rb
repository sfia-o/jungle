require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'requires a password and password confirmation match' do
      user = User.new(
        email: "test@example.com",
        password: 'password1',
        password_confirmation: 'password2'
      )
      expect(user).to_not be_valid
    end

    it 'requires email, first name and last name' do
      user = User.new
      expect(user).to_not be_valid
    end

    




    end
end
