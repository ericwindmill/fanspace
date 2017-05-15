# Schema Information

## setlist
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
city        | string    | not null
state       | string    | not null
date        | date      | not null
venue       | text      | not null
poster_ img | text      | not null *but have default*
songTaggings | array    | not null, foreign key (references songTaggings), indexed

###Question *Do I need this or can I just use hasmany: songs?*
###Question *Do I need a cities table? Becuase a city will have many setlists... Same for venues....*

## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
album       | string    | not null, foreign key (references album)
playCount   | integer   | not null, default: 0
songTaggings_id | integer |  not null foreign key (refernces songTaggings)



## albums
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
cover_img   | string    |
songTaggings | array    |

## songTaggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
setlist_id  | integer   | not null, foreign key (references setlist), indexed
song_id     | integer   | not null, foreign key (references song), indexed
album       | string    | not_null, foreign key (references album)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
image_url       | string    | 
location        | string    |
about           | text      |
songTaggings    | array?    | not null, default [] 


*Question: I want the app to keep track  of which songs a certain user has seen. Is this the right way to access that data?*
*I also need to know how to keep track of attends. How will my user be able to see the # of concerts they attended?*


## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
body        | text      | not null
user_id     | integer   | not null, foreign key (references users), indexed
setlist_id  | integer   | not null, foreign key (references setlist), indexed

## attends 
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
attend      | boolean   | not null
user_id     | integer   | not null, foreign key (references users), indexed
setlist_id  | integer   | not null, foreign key (references setlist), indexed



*Users can attend and comment on setlists.*
*Setlists have many songs.*
*Albums have many songs.*
*Songs belong to albums and setlists.*
