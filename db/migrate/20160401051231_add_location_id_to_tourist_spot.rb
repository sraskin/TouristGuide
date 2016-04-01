class AddLocationIdToTouristSpot < ActiveRecord::Migration
  def change
    add_column :tourist_spots, :location_id, :integer
  end
end
