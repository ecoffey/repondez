class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :name
      t.text :address
      t.string :passphrase
      t.boolean :sent
      t.boolean :responded
      t.integer :guests
      t.integer :tier

      t.timestamps
    end
    add_index :invites, :passphrase, :unique => true
  end
end
