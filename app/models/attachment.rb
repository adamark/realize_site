class Attachment < ActiveRecord::Base
  
  belongs_to :post
  belongs_to :event
  belongs_to :user
  
  image_accessor :image
end
