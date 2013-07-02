class StaticPagesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:home, :clip]
    
  def home
    #return the next event, could be nil if nothing is scheduled
    future_events = Event.where (["start >= ?", Time.now]);
    future_events = future_events.sort_by &:start
    @next_event = future_events[0]
    respond_to do |format|
      format.html
    end
  end
  
  def clip
    respond_to do |format|
      format.html # clips.html.erb
    end
  end
  
end
