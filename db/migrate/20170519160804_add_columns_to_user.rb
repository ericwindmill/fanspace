class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rank, :string
    add_column :users, :tagline, :string
  end
end
