class AddDefaultsToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column: :users, :location, :string, default: "The Milky Way"
    change_column: :users, :profile_img_url, :string, default: 'assets/user_images/default_user2'
  end
end
