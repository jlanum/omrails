class AddPriceToPins < ActiveRecord::Migration
  def change
    add_column :pins, :price, :integer
    add_index :pins, :price
  end
end
