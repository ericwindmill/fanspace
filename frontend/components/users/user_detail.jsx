import React from 'react'
import { Link } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestSingleUser(this.props.match.params.userId)
  }

  render() {
    const tempStyle = {
      color: 'white'
    }

    const { userDetail } = this.props
    return(
      <div>
        <img src={userDetail.profile_img_url} />
        <h1 style={tempStyle}>{userDetail.username}</h1>
        <h2 style={tempStyle}>{userDetail.tagline}</h2>
        <p style={tempStyle}>{userDetail.location}</p>
        <p style={tempStyle}>{userDetail.rank}</p>
        <p style={tempStyle}>{userDetail.about}</p>
      </div>
    )
  }
}

export default userDetail