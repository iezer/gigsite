class FixEventColumnNames < ActiveRecord::Migration
  def change
    rename_column :events, :end, :end_date
    rename_column :events, :start, :start_date

  end
end
