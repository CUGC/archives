class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name, :null => false
      t.string :contact_person
      t.date   :when, :null => false
      t.string :venue
      t.string :city
      t.string :state
      t.string :country
      t.integer :collection_id
      t.boolean :is_event, :default => 0

      t.timestamps
    end
  end
end
