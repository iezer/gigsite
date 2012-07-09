class Venue < ActiveRecord::Base
  attr_accessible :access_url, :address, :description, :geo_x, :geo_y, :main_url, :name, :ranking
  translates :name, :description, :address
end
