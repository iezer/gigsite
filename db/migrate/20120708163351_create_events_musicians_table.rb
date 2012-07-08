class CreateEventsMusiciansTable < ActiveRecord::Migration
  def self.up
    create_table :events_musicians, :id => false do |t|
        t.references :event
        t.references :musician
    end
    add_index :events_musicians, [:event_id, :musician_id]
    add_index :events_musicians, [:musician_id, :event_id]
  end

  def self.down
    drop_table :events_musicians
  end
end
