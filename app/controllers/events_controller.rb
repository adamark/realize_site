class EventsController < ApplicationController
  # skip_before_filter :login_user!, only: [:index, :show]
  
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
    @event.save
    redirect_to events_url
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to events_url, notice: 'Success! We have updated your event!'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
  end
end
