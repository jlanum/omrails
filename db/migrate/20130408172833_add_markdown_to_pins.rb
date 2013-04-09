class AddMarkdownToPins < ActiveRecord::Migration
  def change
    add_column :pins, :markdown, :date
    add_index :pins, :markdown
  end
end
