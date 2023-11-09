class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 5 }

  def self.authenticate_with_credentials(email, password)
    user = User.find_by('lower(email) = ?', email.downcase.strip)

    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end

end
