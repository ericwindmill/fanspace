@albums.each do |album|
  json.set album.id do
    json.extract :id, :title, :songs
  end
end
