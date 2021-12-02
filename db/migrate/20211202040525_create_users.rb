class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null:true
      t.string :password_digest
      t.date :birthday
      t.string :phone

      t.timestamps
    end
  end
end
