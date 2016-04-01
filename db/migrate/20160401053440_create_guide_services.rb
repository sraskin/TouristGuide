class CreateGuideServices < ActiveRecord::Migration
  def change
    create_table :guide_services do |t|
      t.integer :location_id
      t.string :name
      t.string :phone
      t.string :email
      t.string :thana
      t.string :district
      t.string :address
      t.string :web
      t.string :service_area
      t.string :service_type
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
