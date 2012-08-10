class AddSuggestedSongToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :suggested_song, :string
  end
end
