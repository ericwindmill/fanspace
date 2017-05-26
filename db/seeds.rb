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

  eric = User.create!(
    username: 'eric',
    password: 'password',
    email: 'eric@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/user_1_pic_r5czsy.png',
    location: 'San Francisco',
    about: 'This is some nice copy to make other users like me more. I know how important it is to base your self-worth on how well liked you are on the internet.',
    rank: 'got that old time feeling',
    tagline: "It don't matter what yer doin' as long as yer losin' yo head."
  )


  Attend.create!(user_id: eric.id, setlist_id: august_28_2016.id )
  Attend.create!(user_id: eric.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: eric.id, setlist_id: august_4_2011.id )
  Attend.create!(user_id: eric.id, setlist_id: august_4_2012.id )
  Attend.create!(user_id: eric.id, setlist_id: november_05_2005.id )
  Attend.create!(user_id: eric.id, setlist_id: november_16_2015.id )
  Attend.create!(user_id: eric.id, setlist_id: november_17_2015.id )
  Attend.create!(user_id: eric.id, setlist_id: november_15_2015.id )
  Attend.create!(user_id: eric.id, setlist_id: may_12_2016.id )
  Attend.create!(user_id: eric.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: eric.id, setlist_id: may_14_2016.id )
  Attend.create!(user_id: eric.id, setlist_id: february_4_2017.id )
  Attend.create!(user_id: eric.id, setlist_id: february_5_2017.id )
  Attend.create!(user_id: eric.id, setlist_id: february_7_2017.id )
  Attend.create!(user_id: eric.id, setlist_id: april_27_2016.id )
  Attend.create!(user_id: eric.id, setlist_id: june_20_2008.id )
  Attend.create!(user_id: eric.id, setlist_id: december_31_2008.id )

  Comment.create!(
    user_id: eric.id,
    setlist_id: november_05_2005.id,
    body: "What a show!"
  )
  Comment.create!(
    user_id: eric.id,
    setlist_id: august_28_2016.id,
    body: "I can't believe they covered the Wiggles!"
  )
  Comment.create!(
    user_id: eric.id,
    setlist_id: november_05_2005.id,
    body: "Best poster I've ever seen."
  )
  Comment.create!(
    user_id: eric.id,
    setlist_id: december_28_2012.id,
    body: "Best version of Carried Away to date."
  )
  Comment.create!(
    user_id: eric.id,
    setlist_id: august_4_2011.id,
    body: "Red Rocks"
  )

  guest = User.create!(
    username: 'guest',
    password: 'password',
    email: 'guest@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/default_user2_epovjm.png ',
    location: 'The Milkyway Galaxy',
    about: 'Just a thing navigating the earth trying to not be an asshole.',
    rank: 'new user',
    tagline: 'We are the innovators... '
  )

  pooch = User.create!(
    username: 'Pooch',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/design/default_user_reb7q6.png',
    location: 'On the road with the Jacket',
    about: 'Please be my friend.',
    rank: 'junior member',
    tagline: '...they are the imitators! '
  )


  Attend.create!(user_id: pooch.id, setlist_id: february_4_2017.id )
  Attend.create!(user_id: pooch.id, setlist_id: february_5_2017.id )
  Attend.create!(user_id: pooch.id, setlist_id: february_7_2017.id )
  Attend.create!(user_id: pooch.id, setlist_id: june_20_2008.id )
  Attend.create!(user_id: pooch.id, setlist_id: december_31_2008.id )
  Attend.create!(user_id: pooch.id, setlist_id: may_12_2016.id )
  Attend.create!(user_id: pooch.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: pooch.id, setlist_id: may_14_2016.id )
  Attend.create!(user_id: pooch.id, setlist_id: december_27_2012.id )
  Attend.create!(user_id: pooch.id, setlist_id: december_29_2012.id )
  Attend.create!(user_id: pooch.id, setlist_id: december_31_2008.id )
  Attend.create!(user_id: pooch.id, setlist_id: august_28_2016.id )
  Attend.create!(user_id: pooch.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: pooch.id, setlist_id: august_4_2012.id )

  Comment.create!(
    user_id: pooch.id,
    setlist_id: august_4_2011.id,
    body: "The view from side stage was fantastic."
  )
  Comment.create!(
    user_id: pooch.id,
    setlist_id: may_12_2016.id,
    body: "Tom's bass lines though...."
  )
  Comment.create!(
    user_id: pooch.id,
    setlist_id: may_26_2016.id,
    body: "I could deal without the 68 minute version of  Dondante."
  )


  grahm = User.create!(
    username: 'Grahm Parsons',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,h_600,w_600/v1495819629/seeds/grahm_parsons.jpg',
    location: 'Out west',
    about: 'Return of the Grevious Angel....',
    rank: 'junior member',
    tagline: '...they are the imitators! '
  )

  Attend.create!(user_id: grahm.id, setlist_id: february_4_2017.id )
  Attend.create!(user_id: grahm.id, setlist_id: february_5_2017.id )
  Attend.create!(user_id: grahm.id, setlist_id: february_7_2017.id )
  Attend.create!(user_id: grahm.id, setlist_id: june_20_2008.id )
  Attend.create!(user_id: grahm.id, setlist_id: june_1_2016.id )
  Attend.create!(user_id: grahm.id, setlist_id: june_12_2008.id )
  Attend.create!(user_id: grahm.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: grahm.id, setlist_id: december_27_2012.id )
  Attend.create!(user_id: grahm.id, setlist_id: december_29_2012.id )
  Attend.create!(user_id: grahm.id, setlist_id: december_31_2008.id )
  Attend.create!(user_id: grahm.id, setlist_id: august_28_2016.id )
  Attend.create!(user_id: grahm.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: grahm.id, setlist_id: december_31_2008.id )

    Comment.create!(
    user_id: grahm.id,
    setlist_id: november_26_2016.id,
    body: "I wrote better painful lyrics."
  )
    Comment.create!(
    user_id: grahm.id,
    setlist_id: april_28_2016.id,
    body: "Too much bass, not enough feels.."
  )
    Comment.create!(
    user_id: grahm.id,
    setlist_id: june_1_2016.id,
    body: "Eh. Not the best show I've seen.'"
  )
    Comment.create!(
    user_id: grahm.id,
    setlist_id: june_12_2008.id
    body: "Zach Galifanakis wtf.'"
  )

  prince = User.create!(
    username: 'Prince',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/c_crop,h_600,w_600/v1495819560/seeds/prince.jpg',
    location: 'Paisley Park',
    about: 'Please be my friend.',
    rank: 'junior member',
    tagline: 'I make great waffels.'
  )


  Attend.create!(user_id: prince.id, setlist_id: november_05_2005.id )
  Attend.create!(user_id: prince.id, setlist_id: november_15_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_16_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_17_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_22_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: june_12_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: june_1_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: december_27_2012.id )
  Attend.create!(user_id: prince.id, setlist_id: december_29_2012.id )
  Attend.create!(user_id: prince.id, setlist_id: december_31_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: august_28_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: prince.id, setlist_id: december_31_2008.id )

  Comment.create!(
    user_id: prince.id,
    setlist_id: june_12_2008.id,
    body: "Have you tried my waffle recipe?'"
  )
  Comment.create!(
    user_id: prince.id,
    setlist_id: august_28_2016.id,
    body: "Lets Go Crazy"
  )
  Comment.create!(
    user_id: prince.id,
    setlist_id: november_22_2016.id,
    body: "One for the ages."
  )
  Comment.create!(
    user_id: prince.id,
    setlist_id: november_17_2015.id,
    body: "The best set so far."
  )
  Comment.create!(
    user_id: prince.id,
    setlist_id: december_31_2008.id,
    body: "That Nicole Atkins has some big hands."
  )

  freddy = User.create!(
    username: 'Freddy Mercury',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'https://res.cloudinary.com/ericwindmill/image/upload/v1495819502/seeds/freddy_mercury.jpg',
    location: 'Stonetown, Tanzania',
    about: 'Please be my friend.',
    rank: 'junior member',
    tagline: 'I want to break free...'
  )


  Attend.create!(user_id: prince.id, setlist_id: november_05_2005.id )
  Attend.create!(user_id: prince.id, setlist_id: november_15_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_16_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_17_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_22_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: june_12_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_12_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_29_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_2_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_28_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: prince.id, setlist_id: december_31_2008.id )

  Comment.create!(
    user_id: freddy.id,
    setlist_id: december_31_2008.id,
    body: "Her hands are pretty big."
  )
  Comment.create!(
    user_id: freddy.id,
    setlist_id: august_4_2011.id,
    body: "Strangulation!"
  )
  Comment.create!(
    user_id: freddy.id,
    setlist_id: february_4_2017.id,
    body: "Night 1 was so good!"
  )
  Comment.create!(
    user_id: freddy.id,
    setlist_id: august_4_2011.id,
    body: "As the greatest vocalist in rock and roll history, I aprrove.."
  )
  Comment.create!(
    user_id: freddy.id,
    setlist_id: february_5_2017.id,
    body: "What was better? Night 1 or Night 2?"
  )

  stevie = User.create!(
    username: 'Stevie Nicks',
    password: 'password',
    email: 'bear@ericwindmill.com',
    profile_img_url: 'http://res.cloudinary.com/ericwindmill/image/upload/c_crop,g_face,w_500,x_380,y_541/v1495819281/seeds/stevie_knicks.jpg',
    location: 'Pheonix, AZ',
    about: 'Please be my friend.',
    rank: 'junior member',
    tagline: "I'm Stevie Nicks'"
      )


  Attend.create!(user_id: prince.id, setlist_id: november_05_2005.id )
  Attend.create!(user_id: prince.id, setlist_id: november_15_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_16_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_17_2015.id )
  Attend.create!(user_id: prince.id, setlist_id: november_22_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: june_12_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: may_13_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_12_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_29_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_2_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: may_28_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: august_3_2012.id )
  Attend.create!(user_id: prince.id, setlist_id: june_12_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: december_31_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: june_1_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: june_20_2008.id )
  Attend.create!(user_id: prince.id, setlist_id: november_26_2016.id )
  Attend.create!(user_id: prince.id, setlist_id: december_38_2008.id )



  Comment.create!(
    user_id: stevie.id,
    setlist_id: february_5_2017.id,
    body: "Night 2."
  )
  Comment.create!(
    user_id: stevie.id,
    setlist_id: may_28_2016.id,
    body: "They play a lot of shows in May."
  )
  Comment.create!(
    user_id: stevie.id,
    setlist_id: may_28_2016.id,
    body: "Pretty sure the Eagles wrote Witchy Woman about me."
  )
  Comment.create!(
    user_id: stevie.id,
    setlist_id: august_4_2012.id,
    body: "Best version of PWW ever, and possibly their best single performance to date."
  )
  Comment.create!(
    user_id: stevie.id,
    setlist_id: february_7_2017.id,
    body: "These comments are awfully robotic."
  )




  #############
  # ALBUMS AND SONGS
  #############

  Song.delete_all
  Album.delete_all

  the_tennessee_fire = Album.create!(title: "The Tennessee Fire", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495561387/album%20covers/the_tennessee_fire_copy.jpg' )
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

  at_dawn_album = Album.create!(title: "At Dawn", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/at_dawn.jpg' )
    at_dawn               = Song.create!(title: "At Dawn", album_id: at_dawn_album.id)
    lowdown               = Song.create!(title: "Lowdown", album_id: at_dawn_album.id)
    the_way_that_he_sings = Song.create!(title: "The Way That He Sings", album_id: at_dawn_album.id)
    death_is_my_sleazy_pay= Song.create!(title: "Death Is My Sleazy Pay", album_id: at_dawn_album.id)
    hopefully             = Song.create!(title: "Hopefully", album_id: at_dawn_album.id)
    bermuda_highwy        = Song.create!(title: "Bermuda Highway", album_id: at_dawn_album.id)
    honest_man            = Song.create!(title: "Honest Man", album_id: at_dawn_album.id)
    xmas_curtain          = Song.create!(title: "Xmas Curtain", album_id: at_dawn_album.id)
    just_because_i_do     = Song.create!(title: "Just Because I Do", album_id: at_dawn_album.id)
    if_it_smashes_down    = Song.create!(title: "If It Smashes Down", album_id: at_dawn_album.id)
    i_needed_it_most      = Song.create!(title: "I Needed It Most", album_id: at_dawn_album.id)
    phone_went_west       = Song.create!(title: "Phone Went West", album_id: at_dawn_album.id)
    strangulation         = Song.create!(title: "Strangulation!", album_id: at_dawn_album.id)
    untitled_at_dawn      = Song.create!(title: "Untitled", album_id: at_dawn_album.id)
  
  it_still_moves        = Album.create!(title: "It Still Moves", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/it_still_moves_qo2jhk.jpg' )
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

  z                     = Album.create!(title: "z", cover_art_url: 'hhttp://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/z.jpg' )
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
  
  evil_urges_album      = Album.create!(title: "Evil Urges", cover_art_url: 'hhttp://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/evil_urges.jpg' )
    evil_urges            = Song.create!(title: "Evil Urges", album_id: evil_urges_album.id)
    touch_me_pt_1         = Song.create!(title: "Touch Me I'm Going to Scream pt. 1", album_id: evil_urges_album.id)
    highly_suspicious     = Song.create!(title: "Highly Suspicious", album_id: evil_urges_album.id)
    im_amazed             = Song.create!(title: "I'm Amazed", album_id: evil_urges_album.id)
    thank_you_too         = Song.create!(title: "Thank You Too", album_id: evil_urges_album.id)
    sec_walkin            = Song.create!(title: "Sec Walkin", album_id: evil_urges_album.id)
    two_halves            = Song.create!(title: "Two Halves", album_id: evil_urges_album.id)
    librarian             = Song.create!(title: "Librarian", album_id: evil_urges_album.id)
    look_at_you           = Song.create!(title: "Look At You", album_id: evil_urges_album.id)
    aluminum_park         = Song.create!(title: "Aluminum Park", album_id: evil_urges_album.id)
    remnants              = Song.create!(title: "Remnants", album_id: evil_urges_album.id)
    smokin_from_shootin   = Song.create!(title: "Smokin From Shootin", album_id: evil_urges_album.id)
    touch_me_pt_2         = Song.create!(title: "Touch Me I'm Going to Scream pt. 2", album_id: evil_urges_album.id)
    good_intentions       = Song.create!(title: "Good Intentions", album_id: evil_urges_album.id)
  
  
  circuital_album      = Album.create!(title: "Circuital", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/circuital.jpg' )
    victory_dance        = Song.create!(title: "Victory Dance", album_id: circuital_album.id)
    circuital            = Song.create!(title: "Circuital", album_id: circuital_album.id)
    the_day_is_coming    = Song.create!(title: "The Day Is Coming", album_id: circuital_album.id)
    wonderful            = Song.create!(title: "Wonderful (The Way I Feel)", album_id: circuital_album.id)
    outta_my_system      = Song.create!(title: "Outta My System", album_id: circuital_album.id)
    holdin_onto_black_mteal = Song.create!(title: "Holdin' on to Black Metal", album_id: circuital_album.id)
    first_light          = Song.create!(title: "First Light", album_id: circuital_album.id)
    you_wanna_freak_out  = Song.create!(title: "You Wanna Freak Out", album_id: circuital_album.id)
    slow_slow_tune       = Song.create!(title: "Slow Slow Tune", album_id: circuital_album.id)
    movin_away           = Song.create!(title: "Movin Away", album_id: circuital_album.id)
         
  
  the_waterfall       = Album.create!(title: "The Waterfall", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )
    believe              = Song.create!(title: "Believe", album_id: the_waterfall.id)
    compund_fracture     = Song.create!(title: "Compound Fracture", album_id: the_waterfall.id)
    like_a_river         = Song.create!(title: "Like a River", album_id: the_waterfall.id)
    in_its_infancy       = Song.create!(title: "In It's Infancy (The Waterfall)", album_id: the_waterfall.id)
    get_the_point        = Song.create!(title: "Get the Point", album_id: the_waterfall.id)
    spring               = Song.create!(title: "Spring (Among the Living)", album_id: the_waterfall.id)
    thin_line            = Song.create!(title: "Thin Line", album_id: the_waterfall.id)
    big_decisions        = Song.create!(title: "Big Decisions", album_id: the_waterfall.id)
    tropics              = Song.create!(title: "Tropics (Erase Traces", album_id: the_waterfall.id)
    only_memories_remain = Song.create!(title: "Only Memories Remain", album_id: the_waterfall.id)
    hillside_song        = Song.create!(title: "Hillside Song", album_id: the_waterfall.id)
    i_cant_wait          = Song.create!(title: "I Can't Wait", album_id: the_waterfall.id)
    
  
  chocolate_and_ice = Album.create!(title: "Chocolate and Ice", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495806351/album%20covers/chocolate_and_ice.jpg' )
    can_you_see_the_hard_helmet = Song.create!(title: "Can You See The Hard Helmet On My Head?", album_id: chocolate_and_ice.id)
    sooner               = Song.create!(title: "Sooner", album_id: chocolate_and_ice.id)
    cobra                = Song.create!(title: "Cobra", album_id: chocolate_and_ice.id)
    its_been_a_great_3_or_4_years = Song.create!(title: "Its Been A Great 3 or 4 Years", album_id: chocolate_and_ice.id)
    holy                 = Song.create!(title: "Holy", album_id: chocolate_and_ice.id)
    sweetheart           = Song.create!(title: "Sweetheart", album_id: chocolate_and_ice.id)
  
  songs_ohia = Album.create(title: "Songs Ohia Split", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495813259/album%20covers/songs_ohia.jpg' ) 
    o_is_the_one_that_is_real = Song.create!(title: "O is the One that is Real", album_id: songs_ohia.id)
    how_do_you_know = Song.create!(title: "How Do You Know", album_id: songs_ohia.id)
    come_closer = Song.create!(title: "Come Closer", album_id: songs_ohia.id)
    the_year_in_review = Song.create!(title: "The Year In Review", album_id: songs_ohia.id)

    
  
  elizabethtown = Album.create(title: "Elizabethtown", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495806824/album%20covers/elizabethtown.jpg' ) 
    where_to_begin      = Song.create!(title: "Where to Begin", album_id: elizabethtown.id)
  
  
  rol_sog = Album.create(title: "Regions Of Light, Sounds of God (Jim James Solo)", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495813701/album%20covers/rol_sog.jpg' )
    state_of_the_art      = Song.create!(title: "State Of The Art (AEIOU)", album_id: rol_sog.id)
    know_til_now          = Song.create!(title: "Know Til Now", album_id: rol_sog.id)
    dear_one              = Song.create!(title: "Dear One", album_id: rol_sog.id)
    a_new_life            = Song.create!(title: "A New Life", album_id: rol_sog.id)
    exploding             = Song.create!(title: "Exploding", album_id: rol_sog.id)
    of_the_mother_again   = Song.create!(title: "Of The Mother Again", album_id: rol_sog.id)
    actress               = Song.create!(title: "Actress", album_id: rol_sog.id)
    all_is_forgiven       = Song.create!(title: "All Is Forgiven", album_id: rol_sog.id)
    gods_love_to_deliver  = Song.create!(title: "God's Love to Deliver", album_id: rol_sog.id)
  
  covers = Album.create!(title: "Covers", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )
    hot_fun             = Song.create!(title: "Hot Fun (Sly and the Family Stone)", album_id: covers.id)
    hit_it_and_quit_it  = Song.create!(title: "It It and Quit It (Funkadelic)", album_id: covers.id)
    tyrone              = Song.create!(title: "Tyrone (Erykah Badu", album_id: covers.id)
    cold_sweat          = Song.create!(title: "Cold Sweat (James Brown)", album_id: covers.id)
    get_down_on_it      = Song.create!(title: "Get Down On It (Cool and the Ganag)", album_id: covers.id)
    acrosss_110_street  = Song.create!(title: "Across 110th Street (Bobby Womack & Peace)", album_id: covers.id)
    oh_sweet_nuthin     = Song.create!(title: "Oh Sweet Nuthin (Velvet Underground)", album_id: covers.id)
    home_sweet_home     = Song.create!(title: "Home Sweet Home (Motley Crue)", album_id: covers.id)
    move_on_up          = Song.create!(title: "Move On Up (Curtis Mayfield)", album_id: covers.id)
    youre_all_i_need    = Song.create!(title: "You're All I Need (Marvin Gaye)", album_id: covers.id)
    express_yourself    = Song.create!(title: "Express Yourself (Charles Wright)", album_id: covers.id)
    the_wanderer        = Song.create!(title: "The Wanderer (Dion)", album_id: covers.id)
    celebration         = Song.create!(title: "Celebration (Kool & The Gang)", album_id: covers.id)
    islands_in_the_stream = Song.create!(title: "Islands in the Stream (Dolly Parton & Kenny Rogers)", album_id: covers.id)
    bring_it_on_home_to_me = Song.create!(title: "Bring It On Home To Me (Sam Cooke)", album_id: covers.id)
    auld_lang_syne      = Song.create!(title: "Auld Lang Syne", album_id: covers.id)
    rocket_man          = Song.create!(title: "Rocket Man (Elton John)", album_id: covers.id)
    rock_the_casbah     = Song.create!(title: "Rock the Casbah (The Clash)", album_id: covers.id)
    never_tear_us_apart = Song.create!(title: "Never Tear Us Apart (INXS)", album_id: covers.id)
    isnt_it_a_pity      = Song.create!(title: "Isn't It a Pity (George Harrison)", album_id: covers.id)
    it_makes_no_difference = Song.create!(title: "It Makes No Difference (The Band)", album_id: covers.id)
    carried_away = Song.create!(title: "Carried Away (Carl Broemel)", album_id: covers.id)
    all_night_long      = Song.create!(title: "All Night Long (Lionel Richie)", album_id: covers.id)
    down_on_the_bottom  = Song.create!(title: "Down On The Bottom (The New Basement Tapes)", album_id: covers.id)
    quick_like_a_flash  = Song.create!(title: "Quick Like a Flash (The New Basement Tapes)", album_id: covers.id)
    nothing_to_it  = Song.create!(title: "Nothing To It (The New Basement Tapes)", album_id: covers.id)
    wild_honey  = Song.create!(title: "Wild Honey (Fruit Bats)", album_id: covers.id)
    this_land_is_your_land = Song.create!(title: "This Land is Your Land (Woody Guthrie))", album_id: covers.id)
    here_comes_the_sun  = Song.create!(title: "Here Comes the Sun (George Harrison)", album_id: covers.id)
    wish_you_were_here  = Song.create!(title: "Wish You Were Here (Pink Floyd)", album_id: covers.id)
    purple_rain  = Song.create!(title: "Purple Rain (Prince)", album_id: covers.id)
    like_a_rolling_stone= Song.create!(title: "Like a Rolling Stone (Bob Dylan)", album_id: covers.id)
    you_never_can_tell  = Song.create!(title: "You Never Can Tell (Chuck Berry)", album_id: covers.id)
    night_time_is_the_right_time = Song.create!(title: "Night Time Is The Right Time (Ray Charles)", album_id: covers.id)
    mother              = Song.create!(title: "Mother (Pink Floyd)", album_id: covers.id)
    rebel_rebel         = Song.create!(title: "Rebel Rebel (David Bowie)", album_id: covers.id)
    sign_o_the_times    = Song.create!(title: "Sign O The Times (Prince)", album_id: covers.id)
    all_you_need_is_love= Song.create!(title: "All You Need Is Love (The Beatles)", album_id: covers.id)
    easy                = Song.create!(title: "Easy (Commodores)", album_id: covers.id)
    father_figure       = Song.create!(title: "Father Figure (George Michael)", album_id: covers.id)
    another_brick_in_the_wall_pt_2 = Song.create!(title: "Another Brick In the Wall Pt. 2 (Pink Floyd)", album_id: covers.id)
    what_the_world_needs_now = Song.create!(title: "What the World Needs Now (Burt Bacharach)", album_id: covers.id)
    long_may_you_run = Song.create!(title: "Long May You Run (Neil Young)", album_id: covers.id)
    helpless = Song.create!(title: "Helpless (Neil Young)", album_id: covers.id)
    could_you_be_loved = Song.create!(title: "Could You Be Loves (Bob Marley)", album_id: covers.id)
    raspberry_beret = Song.create!(title: "Raspberry Beret (Prince)", album_id: covers.id)
    fade_into_you = Song.create!(title: "Fade Into You (Mazzy Star)", album_id: covers.id)
    take_me_with_you = Song.create!(title: "Take Me With You (Prince)", album_id: covers.id)
    peaceful_easy_feeling = Song.create!(title: "Peaceful Easy Feeling (The Eagles)", album_id: covers.id)
    knockin_on_heavens_doors = Song.create!(title: "Knockin' On Heaven's Doors (Bob Dylan)", album_id: covers.id)
    young_americans = Song.create!(title: "Young Americans (Daivd Bowie)", album_id: covers.id)
    i_could_never_take_the_place_of_your_man = Song.create!(title: "I Could Never Take the Place of Your Man (Prince)", album_id: covers.id)
    

  
  chapter_2_the_learning = Album.create!(title: "Chapter 2: The Learning - Early Recordings", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495810056/album%20covers/chapter_2.jpg' )
    tonite_i_want_to_celebrate_with_you = Song.create!(title: "Tonite I Want To Celebrate With You!", album_id: chapter_2_the_learning.id)
  
  self_hypnosis = Album.create!(title: "Self Hypnosis Series", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495811017/album%20covers/octoplasm_replacement.jpg' )
    octoplasm = Song.create!(title: "Octoplasm", album_id: self_hypnosis.id)
 
  itunes_session_xmas = Album.create!(title: "iTunes Session - Xmas", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495811313/album%20covers/itunes_session_xmas.jpg' )
    welcome_home = Song.create!(title: "Welcome Home", album_id: itunes_session_xmas.id)


  b_sides_etc = Album.create!(title: "B Sides", cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg' )
    throwback = Song.create!(title: "Throwback (When We Were Young)", album_id: b_sides_etc.id)
    throwback = Song.create!(title: "Throwback (When We Were Young", album_id: b_sides_etc.id)
    throwback = Song.create!(title: "Throwback (When We Were Young", album_id: b_sides_etc.id)
  
  # notes = Album.create!(title: 'Notes', cover_art_url: 'http://res.cloudinary.com/ericwindmill/image/upload/v1495752710/album%20covers/the_waterfall.jpg')
  #   encore           = Song.create!(title: "Encore:", album_id: notes.id)
  #   set_2            = Song.create!(title: "Set 2:", album_id: notes.id)


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
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: one_big_holiday.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: i_think_im_going_to_hell.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: sooner.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: where_to_begin.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: run_thru.id)
    # SetlistSong.create!(setlist_id: november_05_2005.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: into_the_woods.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: november_05_2005.id, song_id: mahgeetah.id)

  june_12_2008 = Setlist.create!(
    date: Date.new(2008, 06, 12),
    venue: 'Bonnaroo',
    city: "Manchester",
    state: "Tennesee",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_12_oy4st4.jpg'
  )
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: hot_fun.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: thank_you_too.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: sec_walkin.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: two_halves.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: hit_it_and_quit_it.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: tyrone.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: aluminum_park.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: one_big_holiday.id)
    # SetlistSong.create!(setlist_id: june_12_2008.id, song_id: set_2.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: cold_sweat.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: get_down_on_it.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: acrosss_110_street.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: oh_sweet_nuthin.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: librarian.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: june_12_2008.id, song_id: home_sweet_home.id)



 june_20_2008 = Setlist.create!(
    date: Date.new(2008, 06, 20),
    venue: 'Radio City Music Hall',
    city: "New York",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_06_20_qvddjk.jpg'
  )
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: sec_walkin.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: thank_you_too.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: two_halves.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: aluminum_park.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: touch_me_pt_2.id)
    # SetlistSong.create!(setlist_id: june_20_2008.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: librarian.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: june_20_2008.id, song_id: one_big_holiday.id)

  december_31_2008 = Setlist.create!(
    date: Date.new(2008, 12, 31),
    venue: 'Madison Square Garden',
    city: "New York",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2008_12_31_sjrleo.jpg'
  )
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: move_on_up.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: thank_you_too.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: youre_all_i_need.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: express_yourself.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: look_at_you.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: the_wanderer.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: mahgeetah.id)
  # SetlistSong.create!(setlist_id: december_31_2008.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: celebration.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: get_down_on_it.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: islands_in_the_stream.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: bring_it_on_home_to_me.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: cold_sweat.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: one_big_holiday.id)
  SetlistSong.create!(setlist_id: december_31_2008.id, song_id: auld_lang_syne.id)


  august_4_2011 = Setlist.create!(
    date: Date.new(2011, 8, 04),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466647/posters/2011_08_04_tpqwtd.jpg'
  )

  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: first_light.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: honest_man.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: slow_slow_tune.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: strangulation.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: mahgeetah.id)
    # SetlistSong.create!(setlist_id: august_4_2011.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: holdin_onto_black_mteal.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: august_4_2011.id, song_id: one_big_holiday.id)

  august_3_2012 = Setlist.create!(
    date: Date.new(2012, 8, 03),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_08_03_pijwdn.jpg'
  )
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: rollin_back.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: lowdown.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: holdin_onto_black_mteal.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: first_light.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: librarian.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: rocket_man.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: tonite_i_want_to_celebrate_with_you.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: tyrone.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: its_about_twilight_now.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: never_tear_us_apart.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: anytime.id)
  # SetlistSong.create!(setlist_id: august_3_2012.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: butch_cassidy.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: rock_the_casbah.id)
  SetlistSong.create!(setlist_id: august_3_2012.id, song_id: gideon.id)

  august_4_2012 = Setlist.create!(
    date: Date.new(2012, 8, 04),
    venue: 'Red Rocks Ampitheater',
    city: "Morrison",
    state: "Colorado",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_08_03_pijwdn.jpg'
  )

  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: at_dawn.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: xmas_curtain.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: the_day_is_coming.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: they_ran.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: honest_man.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: isnt_it_a_pity.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: movin_away.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: it_makes_no_difference.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: phone_went_west.id)
  # SetlistSong.create!(setlist_id: august_4_2012.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: where_to_begin.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: oh_sweet_nuthin.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: move_on_up.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: august_4_2012.id, song_id: one_big_holiday.id)


  december_27_2012 = Setlist.create!(
    date: Date.new(2012, 12, 27),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_27_lddoxu.jpg'
  )

  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: xmas_curtain.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: evelyn_is_not_real.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: octoplasm.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: sooner.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: thank_you_too.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: you_wanna_freak_out.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: nashville_to_ky.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: strangulation.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: tyrone.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: its_about_twilight_now.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: mahgeetah.id)
  # SetlistSong.create!(setlist_id: december_27_2012.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: butch_cassidy.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: welcome_home.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: the_day_is_coming.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: december_27_2012.id, song_id: gideon.id)

  december_28_2012 = Setlist.create!(
    date: Date.new(2012, 12, 28),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_28_ufevka.jpg'
  )

  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: tonite_i_want_to_celebrate_with_you.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: first_light.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: rocket_man.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: lowdown.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: old_sept_blues.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: carried_away.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: carried_away.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: it_makes_no_difference.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: librarian.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: i_think_im_going_to_hell.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: phone_went_west.id)
  # SetlistSong.create!(setlist_id: december_28_2012.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: at_dawn.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: holdin_onto_black_mteal.id)
  SetlistSong.create!(setlist_id: december_28_2012.id, song_id: touch_me_pt_2.id)

  december_29_2012 = Setlist.create!(
    date: Date.new(2012, 12, 29),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_12_29_incamw.jpg'
  )
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: honest_man.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: aluminum_park.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: slow_slow_tune.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: where_to_begin.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: o_is_the_one_that_is_real.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: movin_away.id)
  # SetlistSong.create!(setlist_id: december_29_2012.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: all_night_long.id)
  SetlistSong.create!(setlist_id: december_29_2012.id, song_id: one_big_holiday.id)

  november_15_2015 = Setlist.create!(
    date: Date.new(2015, 10, 15),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466649/posters/2015_10_15_ojltbp.jpg'
  )

  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: at_dawn.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: get_the_point.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: like_a_river.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: like_a_river.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: xmas_curtain.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: old_sept_blues.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: they_ran.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: lowdown.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: quick_like_a_flash.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: o_is_the_one_that_is_real.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: holdin_onto_black_mteal.id)
  # SetlistSong.create!(setlist_id: november_15_2015.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: knot_comes_loose.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: slow_slow_tune.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: down_on_the_bottom.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: carried_away.id)
  SetlistSong.create!(setlist_id: november_15_2015.id, song_id: phone_went_west.id)


  november_16_2015 = Setlist.create!(
    date: Date.new(2015, 10, 16),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2015_10_16_xtlp84.jpg'
  )
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: first_light.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: tonite_i_want_to_celebrate_with_you.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: nothing_to_it.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: only_memories_remain.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: wild_honey.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: dancefloors.id)
  # SetlistSong.create!(setlist_id: november_16_2015.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: november_16_2015.id, song_id: mahgeetah.id)

  november_17_2015 = Setlist.create!(
    date: Date.new(2015, 10, 17),
    venue: 'Masonic Center',
    city: "San Francisco",
    state: "California",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495466650/posters/2015_10_17_exvbtw.jpg'
  )

  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: hillside_song.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: where_to_begin.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: thin_line.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: evelyn_is_not_real.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: i_think_im_going_to_hell.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: oh_sweet_nuthin.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: run_thru.id)
  # SetlistSong.create!(setlist_id: november_17_2015.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: november_17_2015.id, song_id: one_big_holiday.id)


  february_4_2017 = Setlist.create!(
    date: Date.new(2017, 2, 4),
    venue: 'Hard Rock Hotel',
    city: 'Riviera Maya',
    state: '',
    country: 'Mexico',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495771846/posters/2017_02_07.png'
  )

  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: this_land_is_your_land.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: first_light.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: xmas_curtain.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: lowdown.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: here_comes_the_sun.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: wish_you_were_here.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: o_is_the_one_that_is_real.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: purple_rain.id)
  # SetlistSong.create!(setlist_id: february_4_2017.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: february_4_2017.id, song_id: like_a_rolling_stone.id)


  february_5_2017 = Setlist.create!(
    date: Date.new(2017, 2, 5),
    venue: 'Hard Rock Hotel',
    city: 'Riviera Maya',
    state: '',
    country: 'Mexico',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495771846/posters/2017_02_07.png'
  )

  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: you_never_can_tell.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: night_time_is_the_right_time.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: mother.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: rebel_rebel.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: holdin_onto_black_mteal.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: sign_o_the_times.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: february_5_2017.id, song_id: all_you_need_is_love.id)
  

  february_7_2017 = Setlist.create!(
    date: Date.new(2017, 2, 7),
    venue: 'Hard Rock Hotel',
    city: 'Riviera Maya',
    state: '',
    country: 'Mexico',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495771846/posters/2017_02_07.png'
  )

  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: easy.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: honest_man.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: only_memories_remain.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: father_figure.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: mahgeetah.id)
  # SetlistSong.create!(setlist_id: february_7_2017.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: another_brick_in_the_wall_pt_2.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: what_the_world_needs_now.id)
  SetlistSong.create!(setlist_id: february_7_2017.id, song_id: one_big_holiday.id)

  november_28_2016 = Setlist.create!(
    date: Date.new(2016, 10, 28),
    venue: 'Suwannee Hulaween',
    city: "Live Oak",
    state: "Florida",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804786/posters/2016_10_28.jpg'
  )

  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: rocket_man.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: easy.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: another_brick_in_the_wall_pt_2.id)
  SetlistSong.create!(setlist_id: november_28_2016.id, song_id: one_big_holiday.id)

  november_27_2016 = Setlist.create!(
    date: Date.new(2016, 10, 27),
    venue: 'Thomas Wolfe Auditorium',
    city: "Asheville",
    state: "NC",
    country: "USA",
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804786/posters/2016_10_27.jpg'
  )

  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: lowdown.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: wish_you_were_here.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: run_thru.id)
  # SetlistSong.create!(setlist_id: november_27_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: tyrone.id)
  SetlistSong.create!(setlist_id: november_27_2016.id, song_id: one_big_holiday.id)

  november_26_2016 = Setlist.create!(
    date: Date.new(2016, 10, 26),
    venue: 'Tivoli Theatre',
    city: 'Chatanooga',
    state: 'TN',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804785/posters/2016_10_26.jpg'
  )

  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: xmas_curtain.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: rocket_man.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: strangulation.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: carried_away.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: mother.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: gideon.id)
  # SetlistSong.create!(setlist_id: november_26_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: slow_slow_tune.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: november_26_2016.id, song_id: mahgeetah.id)

  november_23_2016 = Setlist.create!(
    date: Date.new(2016, 10, 23),
    venue: 'Shoreline Ampitheatre',
    city: 'Mountain View',
    state: 'CA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495805233/posters/2016_10_22.jpg'
  )

  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: november_23_2016.id, song_id: long_may_you_run.id)

  november_22_2016 = Setlist.create!(
    date: Date.new(2016, 10, 22),
    venue: 'Shoreline Ampitheatre',
    city: 'Mountain View',
    state: 'CA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495805233/posters/2016_10_22.jpg'
  )

  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: november_22_2016.id, song_id: helpless.id)

  august_28_2016 = Setlist.create!(
    date: Date.new(2016, 8, 28),
    venue: 'Lockn Festival',
    city: 'Arrington',
    state: 'VA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804785/posters/2016_8_28.jpg'
  )
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: what_the_world_needs_now.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: could_you_be_loved.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: purple_rain.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: rebel_rebel.id)
  SetlistSong.create!(setlist_id: august_28_2016.id, song_id: one_big_holiday.id)


  june_1_2016 = Setlist.create!(
    date: Date.new(2016, 6, 1),
    venue: 'Cadillac House',
    city: 'New York',
    state: 'New York',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804786/posters/2016_default.jpg'
  )

  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: know_til_now.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: dear_one.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: raspberry_beret.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: fade_into_you.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: of_the_mother_again.id)
  SetlistSong.create!(setlist_id: june_1_2016.id, song_id: a_new_life.id)

  may_29_2016 = Setlist.create!(
    date: Date.new(2016, 5, 29),
    venue: 'Red Rocks Ampitheatre',
    city: 'Morrison',
    state: 'CA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804784/posters/2016_05_29.jpg'
  )

  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: throwback.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: the_bear.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: take_me_with_you.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: o_is_the_one_that_is_real.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: gideon.id)
  # SetlistSong.create!(setlist_id: may_29_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: peaceful_easy_feeling.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: holdin_onto_black_mteal.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: easy.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: dancefloors.id)
  SetlistSong.create!(setlist_id: may_29_2016.id, song_id: one_big_holiday.id)


  may_28_2016 = Setlist.create!(
    date: Date.new(2016, 5, 28),
    venue: 'Red Rocks Ampitheatre',
    city: 'Morrison',
    state: 'CA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495600264/posters/2016_05_28.jpg'
  )

  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: just_one_thing.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: picture_of_you.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: knockin_on_heavens_doors.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: strangulation.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: smokin_from_shootin.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: tyrone.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: purple_rain.id)
  # SetlistSong.create!(setlist_id: may_28_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: may_28_2016.id, song_id: mahgeetah.id)

  may_26_2016 = Setlist.create!(
    date: Date.new(2016, 5, 26),
    venue: 'Farm Bureau Insurance Lawn',
    city: 'Indianapolis',
    state: 'IN',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804916/posters/2016_05_26.jpg'
  )
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: war_begun.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: carried_away.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: touch_me_pt_2.id)
  # SetlistSong.create!(setlist_id: may_26_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: may_26_2016.id, song_id: one_big_holiday.id)



  may_14_2016 = Setlist.create!(
    date: Date.new(2016, 5, 14),
    venue: 'Shaky Knees Festival',
    city: 'Atlanta',
    state: 'GA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804784/posters/2016_5_15.jpg'
  )
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: purple_rain.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: may_14_2016.id, song_id: one_big_holiday.id)

  may_13_2016 = Setlist.create!(
    date: Date.new(2016, 5, 13),
    venue: 'Iroquois Ampitheatre',
    city: 'Louisville',
    state: 'KY',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804785/posters/2016_5_12.jpg'
  )

  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: touch_me_pt_1.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: golden.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: i_will_be_there_when_you_die.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: state_of_the_art.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: run_thru.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: dancefloors.id)
  # SetlistSong.create!(setlist_id: may_13_2016.id, song_id: encore÷.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: raspberry_beret.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: cobra.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: highly_suspicious.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: young_americans.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: i_could_never_take_the_place_of_your_man.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: anytime.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: one_big_holiday.id)


  may_12_2016 = Setlist.create!(
    date: Date.new(2016, 5, 12),
    venue: 'Iroquois Ampitheatre',
    city: 'Louisville',
    state: 'KY',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804785/posters/2016_5_12.jpg'
  )

  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: throwback.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: it_beats_for_you.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: i_will_sing_you_songs.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: a_new_life.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: what_a_wonderful_man.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: heartbreakin_man.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: dondante.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: purple_rain.id)
  # SetlistSong.create!(setlist_id: may_13_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: bermuda_highwy.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: phone_went_west.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: may_13_2016.id, song_id: mahgeetah.id)

  may_2_2016 = Setlist.create!(
    date: Date.new(2016, 5, 2),
    venue: 'ACL Live',
    city: 'Austin',
    state: 'TX',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804784/posters/2016_5_2.jpg'
  )
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: outta_my_system.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: slow_slow_tune.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: throwback.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: only_memories_remain.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: masterplan.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: i_will_sing_you_songs.id)
  # SetlistSong.create!(setlist_id: may_2_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: wonderful.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: get_the_point.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: may_2_2016.id, song_id: mahgeetah.id)



  april_29_2016 = Setlist.create!(
    date: Date.new(2016, 4, 29),
    venue: 'NOLA Jazz Festival',
    city: 'New Orleans',
    state: 'LA',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/v1495804784/posters/2016_4_29.jpg'
  )
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: sign_o_the_times.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: purple_rain.id)
  SetlistSong.create!(setlist_id: april_29_2016.id, song_id: one_big_holiday.id)

  april_28_2016 = Setlist.create!(
    date: Date.new(2016, 4, 28),
    venue: 'Revention Music Center',
    city: 'Houston',
    state: 'TX',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804784/posters/2016_4_28.jpg'
  )
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: the_dark.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: sign_o_the_times.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: the_way_that_he_sings.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: lay_low.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: throwback.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: purple_rain.id)
  # SetlistSong.create!(setlist_id: april_28_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: gideon.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: easy_morning_rebel.id)
  SetlistSong.create!(setlist_id: april_28_2016.id, song_id: one_big_holiday.id)

  april_27_2016 = Setlist.create!(
    date: Date.new(2016, 4, 27),
    venue: 'The Criterion',
    city: 'Oklahoma City',
    state: 'OK',
    country: 'USA',
    poster_img_url:'http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_500/v1495804784/posters/2016_4_27.jpg'
  )
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: victory_dance.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: believe.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: evil_urges.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: im_amazed.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: in_its_infancy.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: tropics.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: steam_engine.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: circuital.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: spring.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: off_the_record.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: sign_o_the_times.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: raspberry_beret.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: purple_rain.id)
  # SetlistSong.create!(setlist_id: april_27_2016.id, song_id: encore.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: throwback.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: mahgeetah.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: compund_fracture.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: wordless_chorus.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: touch_me_pt_2.id)
  SetlistSong.create!(setlist_id: april_27_2016.id, song_id: one_big_holiday.id)
