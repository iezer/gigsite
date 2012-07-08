class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.integer :event_id
      t.integer :musician_id

      t.timestamps
    end
  end
end
