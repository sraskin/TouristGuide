class AddThanaIdToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :thana_id, :integer
  end
end
