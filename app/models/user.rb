class User < ActiveRecord::Base
  
  has_secure_password
  
  has_many :posts
  has_many :attachments
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true
end
