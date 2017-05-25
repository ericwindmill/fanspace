import React from 'react'
import { Link, Route } from 'react-router-dom'

class UserMetrics extends React.Component {
  constructor(props) {
    super(props)
  }
  


  render() {
    return(
    <div className="metrics-main">  
      <div className="metrics-grid">
        <section className="stats-at-a-glance-table">
          <h3 className="table-glance-header">Stats At a Glance</h3>
          <div className="main-shows grid-box">
            <p className="icon-ticket-1 fontastic"></p>
            <p>Shows</p>
            <p>{this.props.userDetail.setlist.length}</p>
          </div>
          
          <div className="main-cities grid-box">
            <p className="icon-map fontastic"></p>
            <p >Cities</p>
            <p>{this.props.uniqCities.length}</p>
          </div>
          
          <div className="main-venues grid-box">
            <p className="icon-theatre fontastic"></p>
            <p>Venues</p>
            <p>{this.props.uniqVenues.length}</p>
          </div>

          <div className="main-performances grid-box">
            <p className="icon-music fontastic"></p>
            <p>Total Songs</p>
            <p>{this.props.performances.length}</p>
          </div>

          <div className="main-songs grid-box">
            <p className="icon-nuclear fontastic"></p>
            <p>Unique Songs</p>
            <p>{this.props.uniqSongs.length}</p>
          </div>
        </section>
      </div>

        <section className="user-setlists">
          <h3> Shows Attended </h3>
          <ul>
            {this.props.userDetail.setlist.map(set => {
              return (
                <li className="user-setlist-item" key={set.id}>
                  <Link to={`/setlists/${set.id}`}>{set.date} {set.city}</Link>
                  <img className="user-setlist-item-poster" src={set.poster_img_url} />
                </li>
              )
            })}
          </ul>
        </section> 

        <section className="uniq-songs-by-album">
          <ul>
            {this.props.uniqSongsByAlbum.map(album => {
              return <li className="uniq-songs-album-item" key={album.title}> {album.title} : 
            
              <ul key={album.title}>
                {album.songs.map(song => {
                return <li key={album.key}> {song} </li> })}
              </ul>

            </li>
           })}
          </ul>
        </section>
      </div>

    )
  }
}



export default UserMetrics