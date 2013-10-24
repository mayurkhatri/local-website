class AddForeignKeyContactsForLocation < ActiveRecord::Migration
  def change
    change_table(:contacts) do |t|
      t.references :location
      t.foreign_key :locations
    end
    add_index :contacts, :location_id    
  end
end
