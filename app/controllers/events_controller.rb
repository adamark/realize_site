class EventsController < ApplicationController
  skip_before_filter :login_user!, only: [:show]
  
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:success] = "Created Successfully!"
      redirect_to events_url
    else
      render 'new'
    end
    
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:success] = "Updated Successfully!"
      redirect_to events_url
    else
      render 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:success] = "Deleted"
      redirect_to events_url
    else
      render 'edit'
    end
  end
end
