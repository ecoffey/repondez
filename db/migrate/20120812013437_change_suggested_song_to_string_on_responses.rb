class ChangeSuggestedSongToStringOnResponses < ActiveRecord::Migration
  def up
    change_column :responses, :suggested_song, :string
  end

  def down
    change_column :responses, :suggested_song, :text
  end
end
