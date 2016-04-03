class CreateThanas < ActiveRecord::Migration
  def change
    create_table :thanas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
