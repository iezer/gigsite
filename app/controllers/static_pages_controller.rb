class StaticPagesController < ApplicationController
  def home
    #return the next event, could be nil if nothing is scheduled
    future_events = Event.where (["start >= ?", Time.now]);
    future_events = future_events.sort_by &:start
    @next_event = future_events[0]
    respond_to do |format|
      format.html # duplicate.html.erb
      format.json { render json: @event }
    end
  end

  def help
  end
end
