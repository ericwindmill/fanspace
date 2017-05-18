import React from 'react'
import { Route, NavLink, Link } from 'react-router-dom'

class LeftNav extends React.Component {
  constructor(props) {
    super(props)
  }


  render () {
    return(
      <div className="left-nav">
        <Link to='/setlists'><h2 className="shows">Shows</h2></Link>
        <h3 className="nav-username">{this.props.currentUser.username}</h3>
      </div>
    )
  }
}

export default LeftNav