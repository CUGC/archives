class AddUserIdToItem < ActiveRecord::Migration
  def up
    add_column :items, :user_id, :integer, :null => false
  end
  def down
    remove_column :items, :user_id
  end
end
