import React from 'react'
import { Link, Route } from 'react-router-dom'

class UserMetrics extends React.Component {
  constructor(props) {
    super(props)
  }
  


  render() {

    return(
      <div className="metrics-grid">
        <section className="stats-at-a-glance-table">
          <h3 className="table-glance-header">Stats At a Glance</h3>
          <div className="main-shows">
            <p className="icon-ticket-1 fontastic"></p>
            <p>Shows</p>
            <p>{this.props.userDetail.setlist.length}</p>
          </div>
          
          <div className="main-cities">
            <p className="icon-map fontastic"></p>
            <p >Cities</p>
            <p>{this.props.uniqCities.length}</p>
          </div>
          
          <div className="main-venues">
            <p className="icon-theatre fontastic"></p>
            <p>Venues</p>
            <p>{this.props.uniqVenues.length}</p>
          </div>

          <div className="main-performances">
            <p className="icon-music fontastic"></p>
            <p>Total Songs</p>
            <p>{this.props.performances.length}</p>
          </div>

          <div className="main-songs">
            <p className="icon-nuclear fontastic"></p>
            <p>Unique Songs</p>
            <p>{this.props.uniqSongs.length}</p>
          </div>
        </section>
      </div>
    )
  }
}



export default UserMetrics