import React from 'react'
import { Route, NavLink } from 'react-router-dom'

class TopNav extends React.Component {
  constructor(props) {
    super(props)
  }

  render () {

    return(
      <div>
        <h2>TopNav</h2>
        <NavLink to='/log-in'>Log In</NavLink>
        <NavLink to='/sign-up'>Sign Up</NavLink>
      </div>
    )
  }
}

export default TopNav