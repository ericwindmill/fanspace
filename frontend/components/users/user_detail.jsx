import React from 'react'
import { Link } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'
import UpdateForm from './update_profile_form'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
    
    this.userMatchRender = this.userMatchRender.bind(this)
  }


  componentWillMount() {
    this.props.requestSingleUser(this.props.match.params.userId)
  }


userMatchRender(){
  return (
    <div>
      <UpdateForm 
        userDetail={this.props.userDetail}
        currentUser={this.props.currentUser}
        updateCurrentUser={this.props.updateCurrentUser}
      />
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
      this.renderForm() : <div></div>

     console.log(userMatch) 
    return(
      <div className='profile-detail-main'>
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
            {renderForm}
        </div>
      </div>
    )
  }
}

export default userDetail