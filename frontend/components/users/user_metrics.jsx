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
            return <li key={set.id}><Link to={`/setlists/${set.id}`}>{set.date}{set.city}</Link></li>
          })}
        </ul>
        
        <h2>In {this.props.uniqCities.length} cities</h2>
        
        <h2>At {this.props.uniqVenues.length} venues</h2>
        
        <h2> Seen {this.props.performances.length} total performances!</h2>
        <h2> Seen {this.props.uniqSongs.length} unique songs!</h2>

        <ul>
          {this.props.uniqSongsByAlbum.map(album => {
            return <li key={album.title}> {album.title} : 
            
            <ul key={album.title}>
              {album.songs.map(song => {
              return <li key={album.key}> {song} </li> })}
            </ul>

          </li>
          })}
        </ul>

        <h2> Album Percentages </h2>
        <ul>
          {this.props.albumPercent.map(album => {
            return <li key={album.title}> {album.title} : {album.percent}% </li>
          })}
        </ul>



        <h2> Shows Per Year </h2>
        <ul>
          {this.props.showsPerYear.map(year => {
            return <li key={year.year}> In {year.year} you saw {year.count} shows </li>
          })}
        </ul>

      </div>
    )
  }
}



export default UserMetrics