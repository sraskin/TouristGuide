class CreatePackeges < ActiveRecord::Migration
  def change
    create_table :packeges do |t|
      t.string :name
      t.text :details
      t.decimal :price

      t.timestamps null: false
    end
  end
end
