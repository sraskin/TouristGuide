class AddFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :local_business_id, :integer
    add_column :products, :name, :string
    add_column :products, :image, :string
    add_column :products, :description, :text
    add_column :products, :price, :float
  end
end
