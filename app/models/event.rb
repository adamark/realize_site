class Event < ActiveRecord::Base
  #SEO
  extend FriendlyId
  friendly_id :title, :use => :slugged
  #
  
  has_many :attachments, :dependent => :destroy
  
  accepts_nested_attributes_for :attachments
  attr_accessible :attachments_attributes, :title, :about, :location, :date, :publish, :slug
  
  validates :title, presence: true
  validates :about, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
