class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :is_seller, :is_buyer
  has_secure_password
end
