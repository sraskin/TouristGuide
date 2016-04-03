class AddDistrictIdToDivision < ActiveRecord::Migration
  def change
    add_column :divisions, :district_id, :integer
  end
end
