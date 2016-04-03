class AddGuideServiceIdToPackege < ActiveRecord::Migration
  def change
    add_column :packeges, :guide_service_id, :integer
  end
end
