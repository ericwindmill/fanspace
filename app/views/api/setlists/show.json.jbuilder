json.partial! 'api/setlists/setlist', setlist: @setlist
json.attendees do 
  json.array! @setlist.users, partial: 'api/users/user', as: :user
end
