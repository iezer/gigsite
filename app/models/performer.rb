class Performer < ActiveRecord::Base
  attr_accessible :event_id, :musician_id
  belongs_to :event
end
