import React from 'react'
import { Link } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'
// import UpdateForm from './update_profile_form'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: this.props.currentUser.username,
      tagline: this.props.currentUser.tagname,
      location: this.props.currentUser.location,
      profile_img_url: this.props.currentUser.profile_img_url
    }

    this.handleSubmit = this.handleSubmit.bind(this)
    this.userMatchRender = this.userMatchRender.bind(this)
    this.noMatchRender = this.noMatchRender.bind(this)
  }

  componentWillMount() {
    this.props.requestSingleUser(this.props.match.params.userId)
  }

  handleSubmit() {

  }

  userMatchRender(){
    return (
      <div>
        <LeftNav profile_img={userDetail.profile_img_url} />
        <div className="profile-detail-grid"> 
          <div className="profile-detail-column-1">
            <img className="profile-img" src={userDetail.profile_img_url} />
            </div>
            <div className="profile-detail-column-2">
              <h1 className="profile-username">{userDetail.username}</h1>
              <p className="profile-rank" >{userDetail.rank}</p>
              <p className="profile-location"> Location: {userDetail.location}</p>
              <p className="profile-tagline" >{userDetail.tagline}</p>
            </div>
        </div>
      </div>
    )
  }

  noMatchRender(){
    return(
      <div>
        <LeftNav profile_img={userDetail.profile_img_url} />
        <div className="profile-detail-grid"> 
          <div className="profile-detail-column-1">
            <img className="profile-img" src={userDetail.profile_img_url} />
          </div>
          <div className="profile-detail-column-2">
            <h1 className="profile-username">{userDetail.username}</h1>
            <p className="profile-rank" >{userDetail.rank}</p>
            <p className="profile-location"> Location: {userDetail.location}</p>
            <p className="profile-tagline" >{userDetail.tagline}</p>
          </div>
        </div>
      </div>
    )
  }

  render() {
    const { currentUser, userDetail } = this.props
    let userMatch = false
    if (currentUser.id === userDetail.id) {
      userMatch = true
    }

    const renderForm = userMatch ?
      this.userMatchRender() : this.noMatchRender()

    return(
      <div className='profile-detail-main'>
        {renderForm}
      </div>
    )
  }
}

export default userDetail