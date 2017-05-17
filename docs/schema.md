# Schema Information

## setlist
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
city        | string    | not null
state       | string    | 
country     | string    | 
date        | date      | not null
venue       | text      | not null
poster_img  | text      | not null

Associations: has many songs, has many attends, has many comments 


## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
album       | string    | not null, foreign key (references album)

Associations: belongs to albums, belongs to setlists


## setlistSongs 
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
setlist_id  | integer   | not null, foreign key (references setlist)
song_id     | integer   | not null, foreign key (references song )

*Join Table* Songs have many setlists, and setlsts have many songs


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
