class AddUserIdToTouristSpot < ActiveRecord::Migration
  def change
    add_column :tourist_spots, :user_id, :integer
  end
end
