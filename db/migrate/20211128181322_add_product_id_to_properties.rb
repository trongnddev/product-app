class AddProductIdToProperties < ActiveRecord::Migration[6.1]
  def change
    add_reference :properties, :product, null: false, foreign_key: true
  end
end
