class AddGmapsToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :gmaps, :boolean , :default => false
  end
end
