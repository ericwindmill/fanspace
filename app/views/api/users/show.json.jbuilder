json.partial! 'api/users/user', user: @user
json.setlist do 
  json.array! @user.setlists, partial: 'api/setlists/setlist', as: :setlist
end