class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :cover_art_url, null: false

      t.timestamps
    end
  end
end
