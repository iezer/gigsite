class StaticPagesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:home, :clip]
    
  def home
    @next_event = Event.next_event
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
