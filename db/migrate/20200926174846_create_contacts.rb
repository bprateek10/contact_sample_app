class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number
      t.string :email, null: false
      t.text :message, null: false
      t.timestamps
    end
  end
end
