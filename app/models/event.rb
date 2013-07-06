class Event < ActiveRecord::Base
  attr_accessible :description, :end, :info_url, :musician_ids, :name, :start, :venue_id
  has_and_belongs_to_many :musicians
  belongs_to :venue
  translates :description, :name

  #return the next event, could be nil if nothing is scheduled
  def self.next_event
    future_events = self.where (["end >= ?", Time.now]);
    future_events = future_events.sort_by &:start
    return future_events[0]
  end
end
