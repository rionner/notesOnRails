class User < ActiveRecord::Base

  #set up entity relationship
  has_many(:notes)

  #include bcrypt for password hashing
  include BCrypt

  #get password
  def password
    Password.new(self.password_hash)
  end

  #set password
  def pass=(new_password)
    self.password_hash = Password.create(new_password)
  end

end
