import React from 'react'
import { Route, NavLink, Link } from 'react-router-dom'

class LeftNav extends React.Component {
  constructor(props) {
    super(props)
  }


  render () {
    console.log(this.props)
    return(
      <div className="left-nav">
        <Link to="/setlists"><h3 className={"left-title"}>FANSPACE</h3></Link>
        <div className="left-nav-flex">
        <div className="left-nav-top">

          <Link className="left-link shows" to='/setlists'>All Shows</Link>
          <p className="browse">Browse By</p>
          <ul className="browse-list">
            <Link className="left-link year" to='/setlists'>Year</Link>
            <Link className="left-link city" to='/setlists'>City</Link>
          </ul>
        </div>

          <div className="left-nav-bottom">
            <div className="left-nav-profile-link">
              <Link className="left-nav-username left-link" to={`/users/${this.props.currentUser.id}`}>
               <img className="nav-profile-img" src={this.props.currentUser.profile_img_url} />
                <p className="profile-name">{this.props.currentUser.username}</p>
              </Link>
            </div> 
            <Link to='/'onClick={this.props.logout} className="left-link left-log-out">Log Out</Link>
          </div>
          </div>
      </div>
    )
  }
}

export default LeftNav