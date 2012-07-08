class PerformersController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    vote = topic.votes.build
    vote.save!
    redirect_to(topics_path)
  end
end
