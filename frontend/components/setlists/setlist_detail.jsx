import React from 'react'
import LeftNav from '../navs/left_nav_container'
import SongList from './song_list'
import { Link } from 'react-router-dom'
 
class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
  }



  render() {
    const { setlistDetail } = this.props
        const songList = this.props.setlistDetail.set || []
    return (
      <div className="setlist-detail-main">
        <LeftNav />
          <div className="setlist-detail-grid"> 
            <div className="setlist-detail-profile">
              <img className="setlist-detail-poster" src={setlistDetail.poster_img_url} /> 
              <h3 className="setlist-info-date"> {setlistDetail.date} </h3>
              <h3 className="setlist-info-city"> {setlistDetail.city}, {setlistDetail.state}</h3>
              <h3 className="setlist-info-venue"> {setlistDetail.venue} </h3>
              <Link className="btn attends-button" to="/">I was there</Link>
            </div>
            <SongList className="song-list" songs={songList}/> 
          </div>
      </div>
    )
  }
}

export default SetlistDetail