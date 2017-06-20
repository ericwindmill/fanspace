class AddIndexes < ActiveRecord::Migration[5.0]
  def change
    add_index :setlist_songs, :setlist_id
    add_index :setlist_songs, :song_id
    add_index :attends, :user_id
    add_index :attends, :setlist_id
    add_index :comments, :user_id
    add_index :comments, :setlist_id
    add_index :songs, :album_id
    add_index :albums, :title
    add_index :songs, :title
  end
end
