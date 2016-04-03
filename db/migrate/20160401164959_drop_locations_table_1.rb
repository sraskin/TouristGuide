class DropLocationsTable1 < ActiveRecord::Migration
  def change
    drop_table :locations
  end
end
