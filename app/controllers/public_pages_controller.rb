class PublicPagesController < ApplicationController
  skip_before_filter :login_user!
  
  def about
    @about = Post.find(1)
    @users = User.find(:all, :order => "random()")
  end
  
  def posts
    # The first post with id of 1 is my hack for the text on the about page above the users, didn't want to add another model just for that
    @posts = Post.find(:all, :conditions => ["id != ? and publish = ?", 1, true], :order => "created_at DESC")
  end
  
  def events
    @events = Event.find(:all, :conditions => ["publish = ?", true], :order => "created_at DESC")
  end
  
  def contact
    
  end
end