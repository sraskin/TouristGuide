class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.integer :user_type
      t.boolean :verified
      t.string :avatar
      t.string :gender

      t.timestamps null: false
    end
  end
end
