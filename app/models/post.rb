class Post < ActiveRecord::Base
  #SEO
  extend FriendlyId
  friendly_id :title, :use => :slugged
  #
  
  has_many :attachments, :dependent => :destroy
  belongs_to :user
  
  accepts_nested_attributes_for :attachments
  attr_accessible :attachments_attributes, :title, :body, :publish, :user_id, :slug
  
  validates :title, presence: true
  validates :body, presence: true

end
