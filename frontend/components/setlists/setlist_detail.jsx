import React from 'react'
import LeftNav from '../navs/left_nav_container'

class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)

  // this.formatLocation = this.formatLocation.bind(this)
  }

  componentDidMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
  }

  componentWillReceiveProps(newProps) {
    if (this.props !== newProps) {
      this.props.requestSingleSetlist(newProps.match.params.setlistId)
    }
  }

  // formatLocation() {
  //   const details = this.props.setlistDetail
  //   if (details.country === "USA" ) {
  //     return ({this.props.setlistDetails.city}, {details.state})
  //   } else {
  //     return ({details.city}, {details.country} )
  //   }
  // }


  render() {
    const { setlistDetail } = this.props
    
    return (
      <div className="setlist-detail-main">
        <LeftNav />
        <div className="setlist-detail-profile">
          <figure><img src={setlistDetail.poster_img_url} />  </figure>
          <h1> {this.props.setlistDetail.city}, {this.props.setlistDetail.state}</h1>
          <h1> {this.props.setlistDetail.date} </h1>
          <h1> {this.props.setlistDetail.venue} </h1>
        </div>
        <div className="setlist-songs"></div> 
      </div>
    )
  }
}

export default SetlistDetail