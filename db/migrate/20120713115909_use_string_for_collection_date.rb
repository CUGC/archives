class UseStringForCollectionDate < ActiveRecord::Migration
  def up
    change_column :collections, :when, :string, :null => false
  end

  def down
    change_column :collections, :when, :date, :null => false
  end
end
