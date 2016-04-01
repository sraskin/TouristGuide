class CreateLocalBusinesses < ActiveRecord::Migration
  def change
    create_table :local_businesses do |t|
      t.integer :location_id
      t.string :product_name
      t.string :store_name
      t.string :product_type
      t.decimal :product_price
      t.text :product_details
      t.string :product_image
      t.string :store_image
      t.string :web_address
      t.string :phone
      t.string :email
      t.string :thana
      t.string :district

      t.timestamps null: false
    end
  end
end
