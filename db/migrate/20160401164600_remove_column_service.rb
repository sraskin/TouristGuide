class RemoveColumnService < ActiveRecord::Migration
  def change
    remove_column :guide_services, :location_id
    remove_column :guide_services, :thana
    remove_column :guide_services, :district
    remove_column :local_businesses, :location_id
    remove_column :local_businesses, :thana
    remove_column :local_businesses, :district
    remove_column :tourist_spots, :location_id
    remove_column :tourist_spots, :thana
    remove_column :tourist_spots, :district
  end
end
