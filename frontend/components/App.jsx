import React from 'react'
import { Switch, Route, NavLink } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../util/route_util.jsx'
import SessionFormContainer from './home/session/session_form_container'
import Home from './home/home'
import TopNav from './navs/top_nav_container'
import LoginPage from './home/session/login_page'
import SetlistIndex from './setlists/setlist_index_container'
import SetlistDetailContainer from './setlists/setlist_detail_container'

const App = () => (
  <div className="app-component">
    <TopNav />
    <Switch>
      <Route exact path='/' component={Home} />
      <ProtectedRoute path='/setlists/:setlistId' component={SetlistDetailContainer} />
      <ProtectedRoute path='/setlists' component={SetlistIndex}/>
      <AuthRoute path='/log-in' component={LoginPage} />
      <AuthRoute path='/sign-up' component={LoginPage} />
    </Switch>
  </div>
)

export default App