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

  at_dawn = Album.create(title: "At Dawn", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/at_dawn.jpg' )
  
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

  z                     = Album.create(title: "z", cover_art_url: 'hhttp://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/z.jpg' )
    wordless_chorus       = Song.create!(title: "Wordless Chorus", album_id: z.id)
    it_beats_for_you      = Song.create!(title: "It Beats For You", album_id: z.id)
    gideon                = Song.create!(title: "Gideon", album_id: z.id)
    what_a_wonderful_man  = Song.create!(title: "What a Wonderful Man", album_id: z.id)
    off_the_record        = Song.create!(title: "Off the Record", album_id: z.id)
    into_the_woods        = Song.create!(title: "Into the Woods", album_id: z.id)
    anytime               = Song.create!(title: "Anytime", album_id: z.id)
    lay_low               = Song.create!(title: "Lay Low", album_id: z.id)
    knot_comes_loose      = Song.create!(title: "Knot Comes Loose", album_id: z.id)
    dondante              = Song.create!(title: "Dondante", album_id: z.id)
  
  evil_urges_album      = Album.create(title: "Evil Urges", cover_art_url: 'hhttp://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/evil_urges.jpg' )
    evil_urges            = Song.create!(title: "Evil Urges", album_id: evil_urges_album.id)
    touch_me_pt_1         = Song.create!(title: "Touch Me I'm Going to Scream pt. 1", album_id: evil_urges_album.id)
    highly_suspicious     = Song.create!(title: "Highly Suspicious", album_id: evil_urges_album.id)
    im_amazed             = Song.create!(title: "I'm Amazed", album_id: evil_urges_album.id)
    thank_you_too         = Song.create!(title: "Thank You Too", album_id: evil_urges_album.id)
    sec_walkin            = Song.create!(title: "Sec Walkin", album_id: evil_urges_album.id)
    two_halves            = Song.create!(title: "Two Halves", album_id: evil_urges_album.id)
    librarian             = Song.create!(title: "Librarian", album_id: evil_urges_album.id)
    aluminum_park         = Song.create!(title: "Aluminum Park", album_id: evil_urges_album.id)
    remnants              = Song.create!(title: "Remnants", album_id: evil_urges_album.id)
    smokin_from_shootin   = Song.create!(title: "Smokin From Shootin", album_id: evil_urges_album.id)
    touch_me_pt_2         = Song.create!(title: "Touch Me I'm Going to Scream pt. 2", album_id: evil_urges_album.id)
    good_intentions       = Song.create!(title: "Good Intentions", album_id: evil_urges_album.id)
  
  
  circuital_album      = Album.create(title: "Circuital", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/circuital.jpg' )
    victory_dance        = Song.create!(title: "Victory Dance", album_id: circuital_album.id)
    circuital            = Song.create!(title: "Circuital", album_id: circuital_album.id)
    the_day_is_coming    = Song.create!(title: "The Day Is Coming", album_id: circuital_album.id)
    wonderful            = Song.create!(title: "Wonderful (The Way I Feel)", album_id: circuital_album.id)
    outta_my_system      = Song.create!(title: "Outta My System", album_id: circuital_album.id)
    holdin_onto_black_mteal = Song.create!(title: "Holdin' on to Black Metal", album_id: circuital_album.id)
    first_light          = Song.create!(title: "First Light", album_id: circuital_album.id)
    you_wanna_freak_out  = Song.create!(title: "You Wanna Freak Out", album_id: circuital_album.id)
    slow_slow_tune      = Song.create!(title: "Slow Slow Tune", album_id: circuital_album.id)
    movin_away           = Song.create!(title: "Movin Away", album_id: circuital_album.id)
         
  
  the_waterfall       = Album.create(title: "The Waterfall", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )
    believe             = Song.create!(title: "Believe", album_id: the_waterfall.id)
    compund_fracture    = Song.create!(title: "Compound Fracture", album_id: the_waterfall.id)
    like_a_river        = Song.create!(title: "Like a River", album_id: the_waterfall.id)
    in_its_infancy      = Song.create!(title: "In It's Infancy (The Waterfall)", album_id: the_waterfall.id)
    get_the_point       = Song.create!(title: "Get the Point", album_id: the_waterfall.id)
    spring              = Song.create!(title: "Spring (Among the Living)", album_id: the_waterfall.id)
    thin_line           = Song.create!(title: "Thin Line", album_id: the_waterfall.id)
    big_decisions       = Song.create!(title: "Big Decisions", album_id: the_waterfall.id)
    tropics             = Song.create!(title: "Tropics (Erase Traces", album_id: the_waterfall.id)
    only_memories_remain= Song.create!(title: "Only Memories Remain", album_id: the_waterfall.id)
    hillside_song       = Song.create!(title: "Hillside Song", album_id: the_waterfall.id)
    i_cant_wait         = Song.create!(title: "I Can't Wait", album_id: the_waterfall.id)
    
  
  covers = Album.create(title: "The Waterfall", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )

  
  b_sides_etc = Album.create(title: "The Waterfall", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )
  
  
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

  



