class AddTouristSpotIdToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :tourist_spot_id, :integer
  end
end
