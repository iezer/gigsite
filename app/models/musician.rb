class Musician < ActiveRecord::Base
  attr_accessible :instrument, :member, :name, :url
  has_and_belongs_to_many :events
  translates :name
end
