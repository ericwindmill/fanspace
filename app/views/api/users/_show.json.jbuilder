json.extract! user, :id, :username, :email, :profile_img_url, :location, :about, :rank, :tagline
json.setlist user.setlists do |setlist| 
  json.extract! setlist, :id, :city, :state, :country, :date, :venue, :poster_img_url
end 

