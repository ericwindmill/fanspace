import React from 'react'
import { Switch, Route, NavLink } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../util/route_util.jsx'
import SessionFormContainer from './home/session/session_form_container'
import Home from './home/home'
import TopNav from './navs/top_nav_container'
import Footer from './navs/footer'
import LoginPage from './home/session/login_page'
import SetlistIndex from './setlists/setlist_index_container'
import SetlistIndexByYear from './setlists/setlist_index_by_year_container'
import SetlistIndexByCity from './setlists/setlist_index_by_city_container'
import SetlistDetailContainer from './setlists/setlist_detail_container'
import UserDetailContainer from './users/user_detail_container'

const App = () => (
  <div className="app-component">
    <Switch>
      <Route exact path='/' component={Home} />
      <ProtectedRoute exact path='/setlists/by-year' component={SetlistIndexByYear}/>
      <ProtectedRoute exact path='/setlists/by-city' component={SetlistIndexByCity}/>
      <ProtectedRoute path='/setlists/:setlistId' component={SetlistDetailContainer} />
      <ProtectedRoute path='/setlists' component={SetlistIndex}/>
      <ProtectedRoute path='/users/:userId' component={UserDetailContainer}/>

      <AuthRoute path='/log-in' component={LoginPage} />
      <AuthRoute path='/sign-up' component={LoginPage} />
    </Switch>
  </div>
)

export default App