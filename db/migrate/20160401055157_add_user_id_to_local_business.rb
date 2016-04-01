class AddUserIdToLocalBusiness < ActiveRecord::Migration
  def change
    add_column :local_businesses, :user_id, :integer
  end
end
