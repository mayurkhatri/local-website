class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts, :id => false do |t|
      t.references :user
      t.references :contact
      t.timestamps
    end
  end
end
