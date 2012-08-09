class RemoveSentAndRespondedFromInvites < ActiveRecord::Migration
  def up
    remove_column :invites, :sent
    remove_column :invites, :responded
  end

  def down
    add_column :invites, :responded, :string
    add_column :invites, :sent, :string
  end
end
