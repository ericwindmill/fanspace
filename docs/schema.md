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