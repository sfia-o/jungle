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

    it 'ensures there are no duplicate email addresses (case-sensitivity)' do
      User.create(email: 'test@example.com', password: 'password1', password_confirmation: 'password1', first_name: 'John', last_name: 'Doe')
      user = User.new(email: 'TEST@example.com', password: 'password2', password_confirmation: 'password2', first_name: 'Jane', last_name: 'Doe')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to include("Email has already been taken")
    end






    end
end
