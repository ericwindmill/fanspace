class UpdateImageUrlColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :image_url
    add_column :users, :profile_img_url, :string 
  end
end
