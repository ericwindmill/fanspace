# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do 


  #############
  # SETLIST SEEDS!
  #############
  User.delete_all

  User.create!(
    username: 'eric',
    password: 'password',
    email: 'eric@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/user_1_pic_r5czsy.png',
    location: 'San Francisco',
    about: 'This is some nice copy to make other users like me more. I know how important it is to base your self-worth on how well liked you are on the internet.',
    rank: 'got that old time feeling',
    tagline: "It don't matter what yer doin' as long as yer losin' yo head."
  )

  User.create!(
    username: 'guest',
    password: 'password',
    email: 'guest@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/default_user2_epovjm.png ',
    location: 'The Milkyway Galaxy',
    about: 'Just a thing navigating the earth trying to not be an asshole.',
    rank: 'new user',
    tagline: 'We are the innovators... '
  )

    User.create!(
    username: 'Bear',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/default_user_reb7q6.png',
    location: 'Pluto (the planet)',
    about: 'Please be my friend.',
    rank: 'junior member',
    tagline: '...they are the imitators! '
  )


  #############
  # ALBUMS AND SONGS
  #############

  Song.delete_all
  Album.delete_all

  the_tennessee_fire = Album.create(title: "The Tennessee Fire", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495561387/album%20covers/the_tennessee_fire_copy.jpg' )
  Song.create!(title: "Heartbreakin' Man", album_id: 1)
  Song.create!(title: "They Ran", album_id: 1)
  Song.create!(title: "The Bear", album_id: 1)
  Song.create!(title: "Nashville to Kentucky", album_id: 1)
  Song.create!(title: "Old Sept. Blues", album_id: 1)
  Song.create!(title: "If All Else Fails", album_id: 1)
  Song.create!(title: "It's About Twilight Now", album_id: 1)
  Song.create!(title: "Evelyn Is Not Real", album_id: 1)
  Song.create!(title: "War Begun", album_id: 1)
  Song.create!(title: "Picture of You", album_id: 1)
  Song.create!(title: "I Will Be There When You Die", album_id: 1)
  Song.create!(title: "The Dark", album_id: 1)
  Song.create!(title: "By My Car", album_id: 1)
  Song.create!(title: "Butch Cassidy", album_id: 1)
  Song.create!(title: "I Think I'm Going To Hell", album_id: 1)
  Song.create!(title: "Untitled", album_id: 1)

  at_dawn = Album.create(title: "At Dawn", cover_art_url: 'https://cloudinary.com/console/media_library#/dialog/image/upload/it_still_moves_qo2jhk' )
  
  it_still_moves = Album.create(title: "It Still Moves", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/it_still_moves_qo2jhk.jpg' )
  Song.create!(title: "Mahgeetah", album_id: 3)
  Song.create!(title: "Dancefloors", album_id: 3)
  Song.create!(title: "Golden", album_id: 3)
  Song.create!(title: "Master Plan", album_id: 3)
  Song.create!(title: "One Big Holiday", album_id: 3)
  Song.create!(title: "I Will Sing You Songs", album_id: 3)
  Song.create!(title: "Easy Morning Rebel", album_id: 3)
  Song.create!(title: "Run Thru", album_id: 3)
  Song.create!(title: "Rollin' Back'", album_id: 3)
  Song.create!(title: "Just One Thing", album_id: 3)
  Song.create!(title: "Steam Engine", album_id: 3)
  Song.create!(title: "One in the Same", album_id: 3)

  #############
  # SETLIST SEEDS!
  #############
  Setlist.delete_all

  Setlist.create!(
    date: Date.new(2005, 11, 05),
    venue: 'Alladin Theater',
    city: "Portland",
    state: "Oregon",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466646/posters/2005_11_05_t4xvcv.jpg'
  )
  SetlistSong.create!(setlist_id: 1, song_id: 1)
  SetlistSong.create!(setlist_id: 1, song_id: 2)
  SetlistSong.create!(setlist_id: 1, song_id: 3)
  SetlistSong.create!(setlist_id: 1, song_id: 4)
  SetlistSong.create!(setlist_id: 1, song_id: 5)
  SetlistSong.create!(setlist_id: 1, song_id: 6)
  SetlistSong.create!(setlist_id: 1, song_id: 7)
  SetlistSong.create!(setlist_id: 1, song_id: 8)
  SetlistSong.create!(setlist_id: 1, song_id: 9)
  SetlistSong.create!(setlist_id: 1, song_id: 10)
  SetlistSong.create!(setlist_id: 1, song_id: 11)
  SetlistSong.create!(setlist_id: 1, song_id: 12)

  Setlist.create!(
    date: Date.new(2008, 06, 12),
    venue: 'Bonnaroo',
    city: "Manchester",
    state: "Tennesee",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_12_oy4st4.jpg'
  )
  SetlistSong.create!(setlist_id: 2, song_id: 13)
  SetlistSong.create!(setlist_id: 2, song_id: 14)
  SetlistSong.create!(setlist_id: 2, song_id: 15)
  SetlistSong.create!(setlist_id: 2, song_id: 16)
  SetlistSong.create!(setlist_id: 2, song_id: 28)
  SetlistSong.create!(setlist_id: 2, song_id: 24)
  SetlistSong.create!(setlist_id: 2, song_id: 19)
  SetlistSong.create!(setlist_id: 2, song_id: 12)
  SetlistSong.create!(setlist_id: 2, song_id: 1)
  SetlistSong.create!(setlist_id: 2, song_id: 21)
  SetlistSong.create!(setlist_id: 2, song_id: 20)
  SetlistSong.create!(setlist_id: 2, song_id: 3)



  Setlist.create!(
    date: Date.new(2008, 06, 20),
    venue: 'Radio City Music Hall',
    city: "New York",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_20_qvddjk.jpg'
  )
  SetlistSong.create!(setlist_id: 3, song_id: 22)
  SetlistSong.create!(setlist_id: 3, song_id: 21)
  SetlistSong.create!(setlist_id: 3, song_id: 19)
  SetlistSong.create!(setlist_id: 3, song_id: 11)
  SetlistSong.create!(setlist_id: 3, song_id: 9)
  SetlistSong.create!(setlist_id: 3, song_id: 27)
  SetlistSong.create!(setlist_id: 3, song_id: 8)
  SetlistSong.create!(setlist_id: 3, song_id: 3)
  SetlistSong.create!(setlist_id: 3, song_id: 2)
  SetlistSong.create!(setlist_id: 3, song_id: 25)
  SetlistSong.create!(setlist_id: 3, song_id: 20)
  SetlistSong.create!(setlist_id: 3, song_id: 3)

  Setlist.create!(
    date: Date.new(2008, 12, 31),
    venue: 'Madison Square Garden',
    city: "New York",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_12_31_sjrleo.jpg'
  )

  Setlist.create!(
    date: Date.new(2011, 8, 04),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2011_08_04_tpqwtd.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 8, 03),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_08_03_pijwdn.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 8, 04),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_08_03_pijwdn.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 12, 27),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_27_lddoxu.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 12, 28),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_28_ufevka.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 12, 29),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_29_incamw.jpg'
  )

  Setlist.create!(
    date: Date.new(2015, 10, 15),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'https://cloudinary.com/console/media_library#/dialog/image/upload/posters%2F2015_10_15_ojltbp'
  )

  Setlist.create!(
    date: Date.new(2015, 10, 16),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2015_10_16_xtlp84.jpg'
  )

  Setlist.create!(
    date: Date.new(2015, 10, 17),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/posters/2015_10_17_exvbtw.jpg'
  )



  #############
  # User Interactions
  #############

  Attend.create!(user_id: 1, setlist_id: 1)
  Attend.create!(user_id: 2, setlist_id: 1)
  Attend.create!(user_id: 3, setlist_id: 1)

  Comment.create!(title: "comment1", body: "what a great comment!", user_id: "1", setlist_id: "1")
  Comment.create!(title: "comment2", body: "what a great comment!", user_id: "2", setlist_id: "1")
  Comment.create!(title: "comment3", body: "what a great comment!", user_id: "1", setlist_id: "1")
  Comment.create!(title: "comment4", body: "what a great comment!", user_id: "2", setlist_id: "1")
  Comment.create!(title: "comment5", body: "what a great comment!", user_id: "1", setlist_id: "2")
  Comment.create!(title: "comment6", body: "what a great comment!", user_id: "3", setlist_id: "2")




end
