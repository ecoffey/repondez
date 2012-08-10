class RemovePassphraseFromInvites < ActiveRecord::Migration
  def up
    remove_column :invites, :passphrase
  end

  def down
    add_column :invites, :passphrase, :string
  end
end
