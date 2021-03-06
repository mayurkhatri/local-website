class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email, :null => false, :default => ""
      t.string :category

      t.timestamps
    end
  end
end
