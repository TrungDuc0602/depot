class AddQuantityToLineItems < ActiveRecord::Migration[6.0]
  def self.up
    add_column :line_items, :quantity, :integer, :default => 1
  end

  def self.down
    remove_column :line_items, :quantity
  end
  
end
