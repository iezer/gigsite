class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :venue_id
      t.datetime :start
      t.datetime :end
      t.string :info_url
      t.text :description

      t.timestamps
    end
  end
end
