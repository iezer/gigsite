class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :instrument
      t.string :url
      t.boolean :member

      t.timestamps
    end
  end
end
