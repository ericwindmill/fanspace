class CreateSetlistSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :setlist_songs do |t|
      t.integer :setlist_id, null: false
      t.integer :song_id, null: false

      t.timestamps
    end
  end
end
