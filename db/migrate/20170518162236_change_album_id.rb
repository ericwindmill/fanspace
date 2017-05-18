class ChangeAlbumId < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :album
    add_column :songs, :album_id, :integer
  end
end
