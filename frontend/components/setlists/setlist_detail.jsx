import React from 'react'
import LeftNav from '../navs/left_nav_container'
import SongList from './song_list'
import { Link } from 'react-router-dom'
 
class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
       attend: false,
       attend_count: 0
      }
    this.handleClick = this.handleClick.bind(this)
  }

  componentWillMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
     .then(() => {
       if (this.props.attendees.includes(this.props.user_id)){
         this.setState({
           attend: true
         })
       }
     }
   )
  }

  handleClick(e) {
    e.preventDefault()
    this.props.currentAttend
    if (this.props.attendees.includes(this.props.user_id)){
     console.log('uhoh')
     .then(
        this.setState({
          attend: !this.state.attend,
          attend_count: this.props.setlistDetail.attendees.length -= 1
        })
      )
    } else {
      this.props.newAttend({
        user_id: this.props.user_id,
        setlist_id: this.props.setlistDetail.id
      }).then(
        this.setState({
          attend: !this.state.attend,
          attend_count: this.props.setlistDetail.attendees.length += 1
        })
      )
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
    return (
      <div className="setlist-detail-main">
        <LeftNav />
          <div className="setlist-detail-grid"> 
            <div className="setlist-detail-profile">
              <img className="setlist-detail-poster" src={setlistDetail.poster_img_url} /> 
              <h3 className="setlist-info-date"> {this.formatDate(setlistDetail.date)} </h3>
              <h3 className="setlist-info-city"> {setlistDetail.city}, {setlistDetail.state}</h3>
              <h3 className="setlist-info-venue"> {setlistDetail.venue} </h3>
              
              <Link className="btn attends-button"  
                onClick={this.handleClick} 
                to={`/setlists/${setlistDetail.id}`}>
                {this.state.attend ? "I wasn't there" : "I was there"}
              </Link>

              <p className="setlist-attendees-count"> {setlistDetail.attendees.length} were there! </p>
            </div>
            <SongList className="song-list" songs={songList}/> 
          </div>
      </div>
    )
  }
}

export default SetlistDetail