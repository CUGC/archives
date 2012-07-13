class AddUserIdToCollectionsAndAlbums < ActiveRecord::Migration
  def up
    add_column :collections, :user_id, :integer, :null => false
    add_column :albums, :user_id, :integer, :null => false
  end
  
  def down
    remove_column :collections, :user_id
    remove_column :albums, :user_id
  end
  
end
