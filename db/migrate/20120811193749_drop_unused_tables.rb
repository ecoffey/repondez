class DropUnusedTables < ActiveRecord::Migration
  def up
    drop_table :invites
    drop_table :rails_admin_histories
    drop_table :versions
  end

  def down
  end
end
