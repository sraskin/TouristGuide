class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :thana
      t.string :district

      t.timestamps null: false
    end
  end
end
