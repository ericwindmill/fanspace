json.extract! setlist, :id, :city, :state, :country, :date, :venue, :poster_img_url
json.comments do
  json.array! setlist.comments, partial: 'api/comments/comment', as: :comment
end
json.set do 
  json.array! setlist.songs, partial: 'api/songs/song', as: :song
end
json.attendees do 
  json.array! setlist.users, partial: 'api/users/user', as: :user
end
