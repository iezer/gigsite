class AddEventAndVenueTranslation < ActiveRecord::Migration
  def self.up
    Event.create_translation_table!({
      :name => :string,
      :description => :text
    }, {
      :migrate_data => true
    })
    
    Venue.create_translation_table!({
      :name => :string,
      :address => :text,
      :description => :text
    }, {
      :migrate_data => true
    })
  end
  def self.down
    Event.drop_translation_table! :migrate_data => true
    Venue.drop_translation_table! :migrate_data => true
  end
end
