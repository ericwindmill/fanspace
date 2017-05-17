class ChangeSetlistTable < ActiveRecord::Migration[5.0]
  def change
    change_column_null :setlists, :state, true
    add_column :setlists, :country, :string
  end
end
