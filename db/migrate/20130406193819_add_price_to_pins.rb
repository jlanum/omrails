class AddPriceToPins < ActiveRecord::Migration
  def change
    add_column :pins, :price, :decimal, :precision => 3, :scale => 2
    add_index :pins, :price
  end
end
