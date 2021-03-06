class User < ActiveRecord::Base
  attr_accessible :password_hash, :password_salt, :username, :password, :password_confirmation
  attr_accessor :password    
  
  before_save :encrypt_password
    
  validates_presence_of :username
  validates_presence_of :password
  validates_confirmation_of :password


  def self.authenticate(username, password) 
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end  
  end 
  

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
