import React from 'react'
import { Route, NavLink, Link } from 'react-router-dom'

class TopNav extends React.Component {
  constructor(props) {
    super(props)

    this.loggedInNav = this.loggedInNav.bind(this)
    this.loggedOutNav = this.loggedOutNav.bind(this)
  }

  loggedInNav() {
    return (
      <div className="logged-in-nav">
        <Link className="nav-username grid-el-a" to="/setlists">{this.props.currentUser.username}</Link>
        <NavLink className="nav-link grid-el-b" to="/" onClick={this.props.logout}>Sign Out</NavLink>
      </div>
    )
  }

  loggedOutNav() {
    return(
      <div className="logged-out-nav">
        <NavLink className="nav-link grid-el-a" to="/log-in">Log In</NavLink>
        <NavLink className="nav-link grid-el-b" to="/sign-up">Sign Up</NavLink>
      </div>
     )
  }

  render () {
    const renderComponent = this.props.currentUser ? this.loggedInNav() : this.loggedOutNav()
    return(
      <div className="top-nav">
        <Link to='/'><h2 className="title">fanspace</h2></Link>
        {renderComponent}
      </div>
    )
  }
}

export default TopNav