class AddThanaIdToDivision < ActiveRecord::Migration
  def change
    add_column :divisions, :thana_id, :integer
  end
end
