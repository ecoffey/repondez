class AddAnticipatedGuestsToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :anticipated_guests, :integer
  end
end
