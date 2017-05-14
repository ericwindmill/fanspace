# Schema Information

## setlist
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
city        | string    | not null
date        | text      | not null
venue       | text      | not null

###Question *Do I need this or can I just use hasmany: songs?*
setlistSongTaggiings | integer   | not null, foreign key (references songListTaggings), indexed

###Question *Do I need a cities table? Becuase a city will have many setlists... Same for venues....*

## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
album       | string    | not null, foreign key (references album)

## albums
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null

## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
album       | string    | not null

## setlistSongTaggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
setlist_id  | integer   | not null, foreign key (references setlist), indexed
song_id     | integer   | not null, foreign key (references song), indexed


## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

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