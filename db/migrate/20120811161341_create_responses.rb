class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :name
      t.integer :guests
      t.text :suggested_song
      t.boolean :attending

      t.timestamps
    end
  end
end
