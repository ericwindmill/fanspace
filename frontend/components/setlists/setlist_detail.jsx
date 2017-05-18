import React from 'react'
import LeftNav from '../navs/left_nav_container'
import SongList from './song_list'

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
        <div className="setlist-detail-profile">
          <figure><img src={setlistDetail.poster_img_url} />  </figure>
          <h1> {setlistDetail.city}, {setlistDetail.state}</h1>
          <h1> {setlistDetail.date} </h1>
          <h1> {setlistDetail.venue} </h1>
          
          <SongList songs={songList}/> 
          
        </div>
        <div className="setlist-songs"></div> 
      </div>
    )
  }
}

export default SetlistDetail