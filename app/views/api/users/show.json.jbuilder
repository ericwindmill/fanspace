json.extract! @user, :id, :username, :email, :profile_img_url, :location, :rank, :tagline
json.setlist do 
  json.array! @user.setlists, partial: 'api/setlists/setlist', as: :setlist
end