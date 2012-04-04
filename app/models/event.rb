class Event < ActiveRecord::Base
  
  has_many :attachments, :dependant => :destroy
  
end
