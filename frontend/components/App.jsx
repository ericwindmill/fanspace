import React from 'react'
import { Switch, Route, NavLink } from 'react-router-dom'
import { AuthRoute } from '../util/route_util.jsx'
import SessionFormContainer from './home/session/session_form_container'
import Home from './home/home'
import TopNav from './top_nav_container'
import LoginPage from './home/session/login_page'
import SetlistIndex from './setlists/setlist_index_container'

const App = () => (
  <div className="app-component">
    <TopNav />
    <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/home" component={SetlistIndex}/>
      <AuthRoute path="/log-in" component={LoginPage} />
      <AuthRoute path="/sign-up" component={LoginPage} />
    </Switch>
  </div>
)

export default App