class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.text :attraction
      t.string :details
      t.text :address
      t.text :travel_instruction
      t.string :image
      t.text :hotel

      t.timestamps null: false
    end
  end
end
