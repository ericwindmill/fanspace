import React from 'react'
import { Route, NavLink, Link } from 'react-router-dom'

class LeftNav extends React.Component {
  constructor(props) {
    super(props)
  }


  render () {
    return(
      <div className="left-nav">
        <h3 className={"left-title"}>FANSPACE</h3>
        
        <div className="left-nav-top">
          <p className="left-link">Profile</p>
          <Link to='/setlists'><p className="left-link" className="shows">Shows</p></Link>
          <p className="left-link">Browse By</p>
          <ul className="browse-list">
            <li className="left-link">Year</li>
            <li className="left-link">City</li>
          </ul>
        </div>

          <div className="left-nav-bottom">
            <p className="nav-username left-link">{this.props.currentUser.username}</p>
            <Link to='/'onClick={this.props.logout} className="left-link left-log-out">Log Out</Link>
          </div>
      </div>
    )
  }
}

export default LeftNav