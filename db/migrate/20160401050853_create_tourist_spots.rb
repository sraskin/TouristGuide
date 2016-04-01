class CreateTouristSpots < ActiveRecord::Migration
  def change
    create_table :tourist_spots do |t|
      t.string :name
      t.string :thana
      t.string :district
      t.string :place_image
      t.text :place_details

      t.timestamps null: false
    end
  end
end
