class Event < ActiveRecord::Base
  attr_accessible :description, :end, :info_url, :musician_ids, :name, :start, :venue_id
  has_and_belongs_to_many :musicians
  belongs_to :venue
  translates :description, :name
end
