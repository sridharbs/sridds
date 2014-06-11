class EventsController < ApplicationController
  before_filter :find_event, :except => :index
  
  def index
    @menu = :home
  	@events = Event.order("created_at desc")
  end

  def show
    @attendees = @event.attendees
  end
  
  def attend
    if current_user.attend_event(@event)
      flash[:success] = "Thank you for being part of #{@event.name}"
      redirect_to event_path(@event)
    end
  end
  
  def unattend
    current_user.unattend_event @event
    redirect_to events_path
  end
  
  def find_event
    @event = Event.find(params[:id])
  end
end
