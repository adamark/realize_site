class Post < ActiveRecord::Base
  
  has_many :attachments, :dependent => :destroy
  belongs_to :user
  
  # SEO
  # extend FriendlyId
  # friendly_id :title, :use => :slugged
end
