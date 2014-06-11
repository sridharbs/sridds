class EventsController < ApplicationController
  def index
    @menu = :home
  	@events = Event.all
  end

  def show
  end
end
