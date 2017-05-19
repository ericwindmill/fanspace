class CreateAttends < ActiveRecord::Migration[5.0]
  def change
    create_table :attends do |t|
      t.integer :user_id
      t.integer :setlist_id

      t.timestamps
    end
  end
end