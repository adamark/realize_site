class UsersController < ApplicationController
  # skip_before_filter :login_user!, only: [:index, :show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    # if current_user? || admin?
    @user = User.new
    # end
  end

  def edit
    # if current_user? || admin?
      @user = User.find(session[:user])
    # end
  end
  
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to users_url
  end
  
  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(params[:user])
    redirect_to users_url
  end
  
  def destroy
    if current_user? || admin?
      @user = User.find_by_id(params[:id])
      @user.destroy
    end
    redirect_to users_url
  end
end
