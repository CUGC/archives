class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type, :null => false
      t.text :description
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :credit
      t.integer :album_id, :null => false

      t.timestamps
    end
  end
end
