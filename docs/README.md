# fanspace.io

[fanspace.io link][fanspace] www.fanspace.com

fanspace.io is a full-stack web app where rock and roll meets metrics. It utilizes Ruby on Rails on the backend, a PostgreSQL database, and React.js with Redux on the frontend.

##Features and Implementation

### User / Setlist metrics.

The app is centered around setlists. A user needs to be able to track their personal metrics based on shows that they've attended. In the db, sets are stored with information such as city, venue, song_id and date. The setlist has many songs, which is stored with title and album columns. 

The biggest DB decision that I made was to separate songs from setlists themselves. This was to avoide cluttering up the setlist table with a ton of columns or an array. Instead, I've used a joiner table that maps songs to setlists. 

The user table has information you'd expect to log in and identify themselves. The main functionality comes from the user 'having_many' attends. When a user 'attends' a show, the associated data from the setlists, songs and albums tables are tied to the user. On the users profile page, it will display the shows attended, as well as other geeky live music metrics. 

Users are encouraged to interact by commenting on setlists and uploading their photos to the setlist component, which is added via a form and AJAX call to the databse (comments controller);

Users can also add and update setlists, wiki style. This is done via API calls to the 'setlists' database. 


The UX and design is based on trends from the best designed webaps around today, namely Spotify, Evernote, and 500px. 

Friendly UX, accessability and clean design are top priority in this apps implentation. 

## Future Directions
###Direct Messaging
Users should be able to communicate privately.

###Map-Based Metrics
Users should be able to see a map showing the cities that they've seen the artist. 

###Social Media Sharing
Fans should be able to share the metrics via all the popular social media sites!

###Fan Forum
A nice place for fans to trade records, sell tickets, and geek out!

###More Artists!
Although this project was born out of a love for My Morning Jacket, I'd like to add other artists with loyal fanbases in the future. This is meant to be a fan club website, and not meant to cross metrics from multiple artists. In the future, it would essentially be a 'series' of fanclub apps.

###Trophies
Fans can earn trophies based on their metrics.
