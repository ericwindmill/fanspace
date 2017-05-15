# API Endpoints

## HTML API
### Root
* GET / - loads React app

## JSON API
### Users
* GET /api/users  -- gets all users (for user index page)
* POST /api/users -- creates new users
* PATCH /api/users -- updates users profiles
* GET api/users/:id -- gets single user (for logging in and profile page)

### Comments
* GET api/setlists/:id/comments -- gets all comments assosiated with setlist
* POST api/setlists/:id/comments -- adds a comment associated with setlist
* PATCH  api/setlists/:id/comments -- updates a comment
* DELETE api/setlists/:id/comments -- removes a comment

### Attends 
* GET api/setlists/:id/attends -- gets all attends associated with setlist
* POST api/setlists/:id/attends -- adds an attend associated with current user and setlist
* DELETE api/setlists/:id/attends -- delete a users associated attend

### Sessions
* POST /api/session -- login
* DELETE /api/session -- logout

### Setlists
* GET api/setlists
    * setlist index/search
    * accepts query params to list show by year, venue, etc
* POST api/setlists
* PATCH api/setlists
* GET api/setlists/:id

### Songs
* GET api/songs -- gets all songs
* GET api/songs/:id -- get specific songs

### Albums
* GET api/albums -- gets all albums 
* GET api/albums/:id -- gets individual albums;



### *Do I need seperate api requests to search by date, venue, etc?*