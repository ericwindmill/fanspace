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

Associations: has many songs, has many attends, has many comments 


## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
album       | string    | not null, foreign key (references album)
playCount   | integer   | not null, default: 0

Associations: belongs to albums, belongs to setlists

*Question* do I need playCount or is it possible to use associations to get all of the songs played over all the setlists and then count uniques? 

## albums
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
cover_img   | string    |

Associations: has_many songs

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

Associations: Has many comments, has many attends


## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
body        | text      | not null
user_id     | integer   | not null, foreign key (references users), indexed
setlist_id  | integer   | not null, foreign key (references setlist), indexed

Associations: belongs to user, belongs to 

## attends 
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
attend      | boolean   | not null
user_id     | integer   | not null, foreign key (references users), indexed
setlist_id  | integer   | not null, foreign key (references setlist), indexed
