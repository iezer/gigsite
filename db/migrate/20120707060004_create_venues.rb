class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :main_url
      t.string :access_url
      t.float :geo_x
      t.float :geo_y
      t.integer :ranking
      t.text :description

      t.timestamps
    end
  end
end
