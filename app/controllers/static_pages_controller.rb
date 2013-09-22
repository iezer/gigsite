class StaticPagesController < ApplicationController

  def home
    @next_event = Event.next_event
    respond_to do |format|
      format.html
    end
  end

  def clip
    respond_to do |format|
      format.html
    end
  end

  def fiat
    respond_to do |format|
      format.html
    end
  end

  def biervana
    respond_to do |format|
      format.html
    end
  end
end
