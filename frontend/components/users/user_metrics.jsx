import React from 'react'
import { Link, Route } from 'react-router-dom'

class UserMetrics extends React.Component {
  constructor(props) {
    super(props)
  }
  


  render() {
    return(
      <div>
        <h2>Seen {this.props.userDetail.setlist.length} shows</h2>
        <ul>
          {this.props.userDetail.setlist.map(set => {
            return <li key={set.id}><Link to="/setlists/set.id" >{set.date}{set.city}</Link></li>
          })}
        </ul>
        
        <h2>In {this.props.uniqCities.length} cities</h2>
        
        <h2>At {this.props.uniqVenues.length} venues</h2>
        
        <h2> Seen {this.props.performances.length} total performances!</h2>
        <h2> Seen {this.props.uniqSongs.length} unique songs!</h2>
        <ul>
          {this.props.performances.map(song => {
            return <li key={song.id}> {song.title} </li>
          })}
        </ul>
      </div>
    )
  }
}

export default UserMetrics