import React from 'react'
import { Link, Route } from 'react-router-dom'

class UserMetrics extends React.Component {
  constructor(props) {
    super(props)
  }


  render() {

    return(
      <div>
        <h1>Hello from Metrics!</h1>
        <h2>Seen {this.props.userDetail.setlist.length} shows</h2>
        <h2>In {this.props.uniqCities.length} cities</h2>
        <h2>In {this.props.uniqCities.length} cities</h2>


      </div>
    )
  }
}

export default UserMetrics