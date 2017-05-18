json.partial! 'api/setlists/setlist', setlist: @setlist

json.set do 
  json.array! @setlist.songs, partial: 'api/songs/song', as: :song
end 