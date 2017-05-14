## Component Heirarchy

## App

### App
* Top Level Component

### AuthFormContainer
* Auth Form

### HomeContainer
* LandingPage
* TopNav
* LeftNav

### TopNavContainer
* Branding
* Authlinks

### LeftNavContainer
* Search
* Nav Links


## Setlists

### SetlistIndexContainer
* SetlistsIndex

### SetlistContainer
* SetlistDetail
* AttendedButton
* UpdateSetlist
* AddCommentForm

### NewSetlistContainer
* NewSetlistForm

## Users

### UserIndexContainer
* UserIndex

### UserProfileContainer
* UserDetail
* UserStats

## Search

## SetlistSearch
* SetlistSearch

## UserSearch
* UserSearch




## Routes
|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/setlists" | "SetlistIndexContainer" |
| "/setlists/:setlistid" | "SetlistContainer" |
| "/setlist/new" | "NewSetlistFormContainer" |
| "/setlists/:setlistid/update" | "UpdateSetlistFormContainer" |
| "/setlists/:setlistid/comment" | "AddComment" |
| "/users" | "UserIndexContainer" |
| "/users/:userid" | "UserProfileContainer" |
| "/search" | "SetlistSearch" |
| "/user-search" | "UserSearch" |