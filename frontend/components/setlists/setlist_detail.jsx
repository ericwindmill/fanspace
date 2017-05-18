import React from 'react'
import LeftNav from '../navs/left_nav_container'

class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
  }



  render() {
    const { setlistDetail } = this.props
    const song = this.props.setlistDetail.set[0] || {title: ""}
    console.log (song.title)
    return (
      <div className="setlist-detail-main">
        <LeftNav />
        <div className="setlist-detail-profile">
          <figure><img src={setlistDetail.poster_img_url} />  </figure>
          <h1> {this.props.setlistDetail.city}, {this.props.setlistDetail.state}</h1>
          <h1> {this.props.setlistDetail.date} </h1>
          <h1> {this.props.setlistDetail.venue} </h1>
          
          <ul>
            <li>{song.title}</li>
          </ul>
          
        </div>
        <div className="setlist-songs"></div> 
      </div>
    )
  }
}

export default SetlistDetail