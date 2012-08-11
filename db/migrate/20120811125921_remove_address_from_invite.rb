class RemoveAddressFromInvite < ActiveRecord::Migration
  def up
    remove_column :invites, :address
  end

  def down
    add_column :invites, :address, :text
  end
end
