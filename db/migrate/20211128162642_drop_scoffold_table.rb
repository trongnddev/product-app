class DropScoffoldTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :scaffolds do |t|
      t.string :category, null: false
      t.string :name, null: false
    end
  end
end
