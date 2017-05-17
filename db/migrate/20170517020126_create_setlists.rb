class CreateSetlists < ActiveRecord::Migration[5.0]
  def change
    create_table :setlists do |t|
      t.string :city, null: false
      t.string :state, null: false
      t.date :date, null: false
      t.string :venue, null: false
      t.string :poster_img_url, null: false

      t.timestamps
    end
  end
end
