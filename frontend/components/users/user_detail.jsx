import React from 'react'
import { Link } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestSingleUser(this.props.match.params.setlistId)
  }

  render() {
    const tempStyle = {
      color: 'white'
    }

    const { userDetail } = this.props
    return(
      <div>
        <h1 style={tempStyle}> HELLO FROM USER DETAIL (PROFILE) </h1>
        <p style={tempStyle}>{userDetail.username}</p>
        <p style={tempStyle}>{userDetail.location}</p>
        <p style={tempStyle}>{userDetail.about}</p>
      </div>
    )
  }
}

export default userDetail