// This is the top level component if someone is logged in. In other words/ it should render the navs and the MAIN concent component.

import React from 'react'
import { Switch, Route } from 'react-router-dom'
import GreetingContainer from './home/greeting_container'
import SessionFormContainer from './home/session/session_form_container'

const App = () => (
  <div className="app-component">
    <header>
      <h1> Welcome to Fanspace </h1>
      <GreetingContainer />
    </header>

    <Route path="/log-in" component={SessionFormContainer} />
    <Route path="/sign-up" component={SessionFormContainer} />
  </div>
)

export default App