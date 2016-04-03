class AddDivisionDistrictThana < ActiveRecord::Migration
  def change
    add_column :guide_services, :division_id, :integer
    add_column :guide_services, :district_id, :integer
    add_column :guide_services, :thana_id, :integer

    add_column :local_businesses, :division_id, :integer
    add_column :local_businesses, :district_id, :integer
    add_column :local_businesses, :thana_id, :integer

    add_column :tourist_spots, :division_id, :integer
    add_column :tourist_spots, :district_id, :integer
    add_column :tourist_spots, :thana_id, :integer
  end
end
