class User < ActiveRecord::Base
  
  attr_accessible :name, :email, :bio, :password, :password_confirmation, :admin
  has_secure_password
  
  has_many :posts
  has_many :attachments
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
