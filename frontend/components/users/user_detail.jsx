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
      <div className='profile-detail-main'>
        <LeftNav profile_img={userDetail.profile_img_url} />
          <div className="profile-detail-grid"> 
            <div className="profile-detail-info">
              <img className="profile-img" src={userDetail.profile_img_url} />
              <h1 className="profile-username">{userDetail.username}</h1>
              <p className="profile-location"> Location: {userDetail.location}</p>
              <p className="profile-rank" >{userDetail.rank}</p>
              <p className="profile-tagline" >{userDetail.tagline}</p>
            </div>
          </div>
      </div>
    )
  }
}

export default userDetail