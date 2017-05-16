## Component Heirarchy




## RootContainer
  ##Logged Out:
  ### HomeContainer --- '/'
    * LoggedOutNav / login/signup
    * LandingComponent

   ### LogInPage --- '/signin' OR '/signup'
   ### AuthFormContainer
    * Auth Form  

  ##Logged In:
  ### AppContainer
    * Top Level Component
    * LoggedInNav
    * LeftNav

  ### TopNavContainer
    * Branding
    * Authlinks

  ### LeftNavContainer
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