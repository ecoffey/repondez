class AddStateToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :state, :string
  end
end
