class AddQuantityToPins < ActiveRecord::Migration
  def change
    add_column :pins, :quantity, :integer
    add_index :pins, :quantity
  end
end
