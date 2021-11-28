class CreateScaffolds < ActiveRecord::Migration[6.1]
  def change
    create_table :scaffolds do |t|
      t.string :category
      t.string :name

      t.timestamps
    end
  end
end
