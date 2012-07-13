class UseKindForItemType < ActiveRecord::Migration
  def up
    rename_column :items, :type, :kind
  end

  def down
    rename_column :items, :kind, :type
  end
end
