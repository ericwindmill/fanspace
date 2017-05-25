import React from 'react'
import { Link } from 'react-router-dom'


class SetlistIndexItem extends React.Component {
  constructor(props) {
    super(props)

    this.handleClick = this.handleClick.bind(this)

  }


  handleClick(e) {
    e.preventDefault()

    const attend = (
      this.props.setlist.attendees.some((users) =>
      users.id === this.props.currentUser.id )
    );
    if (attend) {
    this.props.deleteAttend({
        user_id: this.props.currentUser.id,
        setlist_id: this.props.setlist.id
      }) } else {
        this.props.newAttend({
        user_id: this.props.currentUser.id,
        setlist_id: this.props.setlist.id
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
    const {setlist, currentUser} = this.props
    const background_image = {  
      backgroundImage: `url(${setlist.poster_img_url})`
    }
    const attend = (
          setlist.attendees.some((users) =>
          users.id === currentUser.id )
        );

    return (
          <li className="setlist-index-item">
            <Link to={`/setlists/${setlist.id}`}>
              <div className="setlist-index-poster" style={background_image} alt={setlist.date}> 
                <h2 className="detail-date k">{setlist.date}</h2> 
              </div>
              <p className="setlist-index-info"> {setlist.city}, {setlist.state} - {this.formatDate(setlist.date)}</p>
            </Link> 
            <button type="button" className="btn attends-button"  
              onClick={this.handleClick} 
            >
              {attend ? "I wasn't there" : "I was there"}
            </button>
          </li>
      )
    }
}


export default SetlistIndexItem