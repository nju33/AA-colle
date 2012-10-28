class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :email
  attr_accessible :password, :password_confirmation

  has_many :aas

  validates :name, presence: true, uniqueness: true
  has_secure_password
end
