class AddDistrictIdToThana < ActiveRecord::Migration
  def change
    add_column :thanas, :district_id, :integer
  end
end
