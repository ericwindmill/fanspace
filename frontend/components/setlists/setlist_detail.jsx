import React from 'react'
import LeftNav from '../navs/left_nav_container'
import SongList from './song_list'
import { Link } from 'react-router-dom'
import Comments from '../comments/comment_container'
 
class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)

    this.handleClick = this.handleClick.bind(this)
  }

  componentWillMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
  }

  handleClick(e) {
    e.preventDefault()

    const attend = (
      this.props.setlistDetail.attendees.some((users) =>
      users.id === this.props.currentUser.id )
    );
    if (attend) {
    this.props.deleteAttend({
        user_id: this.props.currentUser.id,
        setlist_id: this.props.setlistDetail.id
      }) } else {
        this.props.newAttend({
        user_id: this.props.currentUser.id,
        setlist_id: this.props.setlistDetail.id
      })
    }
  }
  



  formatDate(date) {
    const months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ]
    let arr = date.split("-")
    let formattedDate = [];
    formattedDate.push(months[ arr[1]-1 ])
    formattedDate.push(arr[2])
    formattedDate.push(arr[0])
    return formattedDate.join(" ");
  }



  render() {
    const { setlistDetail } = this.props
    const songList = this.props.setlistDetail.set || []
    const attend = (
      this.props.setlistDetail.attendees.some((users) =>
      users.id === this.props.currentUser.id )
    );
    return (
      <div className="setlist-detail-main">
        <LeftNav />
          <div className="setlist-detail-grid"> 
            <div className="setlist-detail-profile">
              <img className="setlist-detail-poster" src={setlistDetail.poster_img_url} /> 
              <h3 className="setlist-info-date"> {this.formatDate(setlistDetail.date)} </h3>
              <h3 className="setlist-info-city"> {setlistDetail.city}, {setlistDetail.state}</h3>
              <h3 className="setlist-info-venue"> {setlistDetail.venue} </h3>
              
              <button type="button" className="btn attends-button"  
                onClick={this.handleClick} 
                >
                {attend ? "I wasn't there" : "I was there"}
              </button>

              <p className="setlist-attendees-count"> {setlistDetail.attendees.length} were there! </p>
            </div>
            <SongList className="song-list" songs={songList}/> 
            <Comments setlistDetail={this.props.setlistDetail}/>
          </div>
      </div>
    )
  }
}

export default SetlistDetail