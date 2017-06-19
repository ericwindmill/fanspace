import React from 'react'
import { Route, NavLink, Link } from 'react-router-dom'

class LeftNav extends React.Component {
  constructor(props) {
    super(props)

  }







  render () {
    return(
      <div className="left-nav">
        <Link to="/setlists" className="left-title">
          <div className="icon-ios-analytics"></div>
          <h2 className="">Groovie</h2>
        </Link>

        <div className="left-nav-flex">
        <div className="left-nav-top">

          <NavLink className="left-link top-profile" activeStyle={{color: 'rgb(1, 152, 137)'}} to={`/users/${this.props.currentUser.id}`}>My Stats</NavLink>
          <NavLink className="left-link shows" activeStyle={{color: 'rgb(1, 152, 137)'}} to='/setlists'>Explore Shows</NavLink>
          <p className="browse">Browse By</p>
          <ul className="browse-list">
            <NavLink className="left-link year" activeStyle={{color: 'rgb(1, 152, 137)'}} to='/setlists/by-year'>Year</NavLink>
            <NavLink className="left-link city" activeStyle={{color: 'rgb(1, 152, 137)'}} to='/setlists/by-city'>City</NavLink>
          </ul>
        </div>

          <div className="left-nav-bottom">
            <div className="left-nav-profile-link">
              <NavLink className="left-nav-username left-link" activeStyle={{color: 'rgb(1, 152, 137)'}} to={`/users/${this.props.currentUser.id}`}>
               <img className="nav-profile-img" src={this.props.currentUser.profile_img_url} />
                <p className="profile-name">{this.props.currentUser.username}</p>
              </NavLink>
            </div> 
            <NavLink to='/'onClick={this.props.logout} className="left-link left-log-out">Log Out</NavLink>
          </div>
          </div>
      </div>
    )
  }
}

export default LeftNav