class User < ActiveRecord::Base
  attr_accessible :password_hash, :password_salt, :username
  attr_accessor :password    
    
  validates_presence_of :username
  validates_presence_of :password
  validates_confirmation_of :password


  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
