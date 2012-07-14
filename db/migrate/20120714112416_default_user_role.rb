class DefaultUserRole < ActiveRecord::Migration
  def up
    change_column_default :users, :role, "member"
  end

  def down
    change_column_default :users, :role, ""
  end
end
