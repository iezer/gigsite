class Event < ActiveRecord::Base
  attr_accessible :description, :end, :info_url, :name, :start, :venue_id
  has_many :musicians
  belongs_to :venue
end
