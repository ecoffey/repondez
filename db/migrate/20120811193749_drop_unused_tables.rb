class DropUnusedTables < ActiveRecord::Migration
  def table_exists?(name)
    ActiveRecord::Base.connection.tables.include?(name)
  end

  def up
    drop_table :invites if table_exists? :invites
    drop_table :rails_admin_histories if table_exists? :rails_admin_histories
    drop_table :versions if table_exists? :versions
  end

  def down
  end
end
