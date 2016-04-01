class AddUserIdToGuideService < ActiveRecord::Migration
  def change
    add_column :guide_services, :user_id, :integer
  end
end
