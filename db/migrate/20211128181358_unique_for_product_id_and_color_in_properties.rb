class UniqueForProductIdAndColorInProperties < ActiveRecord::Migration[6.1]
  def change
    add_index :properties, [:product_id, :color], unique: true
  end
end
