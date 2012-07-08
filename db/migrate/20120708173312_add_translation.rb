class AddTranslation < ActiveRecord::Migration
  def self.up
    Musician.create_translation_table!({
      :name => :string
    }, {
      :migrate_data => true
    })
  end
  def self.down
    Musician.drop_translation_table! :migrate_data => true
  end
end