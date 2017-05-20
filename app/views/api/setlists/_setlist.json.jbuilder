json.extract! setlist, :id, :city, :state, :country, :date, :venue, :poster_img_url, :comments
json.set do 
  json.array! setlist.songs, partial: 'api/songs/song', as: :song
end

