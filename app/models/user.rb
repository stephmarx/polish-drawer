class User < ActiveRecord::Base
	has_many :polishes

	validates :username, uniqueness: {case_sensitive: false}

	def password
    @password ||= BCrypt::Password.new(self.password_hash)
  end

  def password=(plaintext)
    @password = BCrypt::Password.create(plaintext)
    self.password_hash = @password
  end

  def self.authenticate(user)
    @user = User.find_by(username: user[:username].downcase)
    @user if @user && @user.password == user[:password]
  end
end
