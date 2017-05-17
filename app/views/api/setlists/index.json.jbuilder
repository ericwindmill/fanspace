@setlists.each do |set|
  json.set! set.id do 
    json.partial! 'api/setlists/setlist', setlist: set
  end
end