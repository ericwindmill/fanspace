# API Endpoints

## HTML API
### Root
* GET / - loads React app

## JASON API
### Users
* GET /api/users
* POST /api/users
* PATCH /api/users
* GET api/users/:id

### Sessions
* POST /api/session
* DELETE /api/session

### Setlists
* GET api/setlists
    * setlist index/search
    * accepts query params to list show by year, venue, etc
* POST api/setlists
* PATCH api/setlists
* GET api/setlists/:id



### *Do I need seperate api requests to search by date, venue, etc?*