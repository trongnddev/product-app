class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :color
      t.integer :quantity_in_stock
      t.string :image

      t.timestamps
    end
    
  end
end
