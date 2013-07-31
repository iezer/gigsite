class Venue < ActiveRecord::Base
  attr_accessible :access_url, :address, :description, :geo_x, :geo_y, :main_url, :name, :ranking, :gmaps
  translates :name, :description, :address

  #TODO validate some stuff
  acts_as_gmappable :lat => 'geo_x', :lng => 'geo_y', :process_geocoding => :geocode?,
                    :address => "address", :normalized_address => "address",
                    :msg => "Sorry, not even Google could figure out where that is",
                    :gmaps => 'gmaps'

  def geocode?
    (!address.blank? && (geo_x.blank? || geo_y.blank?)) || address_changed?
  end

  def gmaps4rails_infowindow
   "<h2><a href =\"#{main_url}\">#{name}</a></h2>"
    # "<h3>X #{geo_x} Y #{geo_y}</h3>"
  end
end