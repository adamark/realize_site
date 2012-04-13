class UsersController < ApplicationController
  skip_before_filter :login_user!, only: [:show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
      @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Created Successfully!"
      redirect_to users_url
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Updated Successfully!"
      redirect_to users_url
    else
      render 'edit'
    end
  end
  
  def destroy
    if current_user? || admin?
      @user = User.find_by_id(params[:id])
      @user.destroy
    end
    redirect_to users_url
  end
  
end
