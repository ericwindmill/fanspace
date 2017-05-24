# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





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

  heartbreakin_man             = Song.create!(title: "Heartbreakin' Man", album_id: the_tennessee_fire.id)
  they_ran                     = Song.create!(title: "They Ran", album_id: the_tennessee_fire.id)
  the_bear                     = Song.create!(title: "The Bear", album_id: the_tennessee_fire.id)
  nashville_to_ky              = Song.create!(title: "Nashville to Kentucky", album_id: the_tennessee_fire.id)
  old_sept_blues               = Song.create!(title: "Old Sept. Blues", album_id: the_tennessee_fire.id)
  if_all_else_fails            = Song.create!(title: "If All Else Fails", album_id: the_tennessee_fire.id)
  its_about_twilight_now       = Song.create!(title: "It's About Twilight Now", album_id: the_tennessee_fire.id)
  evelyn_is_not_real           = Song.create!(title: "Evelyn Is Not Real", album_id: the_tennessee_fire.id)
  war_begun                    = Song.create!(title: "War Begun", album_id: the_tennessee_fire.id)
  picture_of_you               = Song.create!(title: "Picture of You", album_id: the_tennessee_fire.id)
  i_will_be_there_when_you_die = Song.create!(title: "I Will Be There When You Die", album_id: the_tennessee_fire.id)
  the_dark                     = Song.create!(title: "The Dark", album_id: the_tennessee_fire.id)
  by_my_car                    = Song.create!(title: "By My Car", album_id: the_tennessee_fire.id)
  butch_cassidy                = Song.create!(title: "Butch Cassidy", album_id: the_tennessee_fire.id)
  i_think_im_going_to_hell     = Song.create!(title: "I Think I'm Going To Hell", album_id: the_tennessee_fire.id)
  untitled                     = Song.create!(title: "Untitled", album_id: the_tennessee_fire.id)

  at_dawn = Album.create(title: "At Dawn", cover_art_url: 'https://cloudinary.com/console/media_library#/dialog/image/upload/it_still_moves_qo2jhk' )
  
  it_still_moves        = Album.create(title: "It Still Moves", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/it_still_moves_qo2jhk.jpg' )
  mahgeetah             = Song.create!(title: "Mahgeetah", album_id: it_still_moves.id)
  dancefloors           = Song.create!(title: "Dancefloors", album_id: it_still_moves.id)
  golden                = Song.create!(title: "Golden", album_id: it_still_moves.id)
  masterplan            = Song.create!(title: "Master Plan", album_id: it_still_moves.id)
  one_big_holiday       = Song.create!(title: "One Big Holiday", album_id: it_still_moves.id)
  i_will_sing_you_songs = Song.create!(title: "I Will Sing You Songs", album_id: it_still_moves.id)
  easy_morning_rebel    = Song.create!(title: "Easy Morning Rebel", album_id: it_still_moves.id)
  run_thru              = Song.create!(title: "Run Thru", album_id: it_still_moves.id)
  rollin_back           = Song.create!(title: "Rollin' Back'", album_id: it_still_moves.id)
  just_one_thing        = Song.create!(title: "Just One Thing", album_id: it_still_moves.id)
  steam_engine          = Song.create!(title: "Steam Engine", album_id: it_still_moves.id)
  one_in_the_same       = Song.create!(title: "One in the Same", album_id: it_still_moves.id)

  #############
  # SETLIST SEEDS!
  #############
  Setlist.delete_all

  november_05_2005 = Setlist.create!(
    date: Date.new(2005, 11, 05),
    venue: 'Alladin Theater',
    city: "Portland",
    state: "Oregon",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466646/posters/2005_11_05_t4xvcv.jpg'
  )
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: i_think_im_going_to_hell.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: rollin_back.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: by_my_car.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: one_big_holiday.id)

  june_12_2008 = Setlist.create!(
    date: Date.new(2008, 06, 12),
    venue: 'Bonnaroo',
    city: "Manchester",
    state: "Tennesee",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_12_oy4st4.jpg'
  )
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: one_big_holiday.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: butch_cassidy.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: they_ran.id)



 june_20_2008 = Setlist.create!(
    date: Date.new(2008, 06, 20),
    venue: 'Radio City Music Hall',
    city: "New York",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_20_qvddjk.jpg'
  )
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: one_big_holiday.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: by_my_car.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: one_in_the_same.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: rollin_back.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: old_sept_blues.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: its_about_twilight_now.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: if_all_else_fails.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: run_thru.id)

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
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466649/posters/2015_10_15_ojltbp.jpg'
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

  



