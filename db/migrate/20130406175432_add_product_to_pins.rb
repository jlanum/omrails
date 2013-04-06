class AddProductToPins < ActiveRecord::Migration
  def change
    add_column :pins, :product, :string
    add_index :pins, :product
  end
end
