import React from 'react'
import { Link, Route } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'
import UpdateForm from './update_profile_form'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
    
    this.userMatchRender = this.userMatchRender.bind(this)
    this.displayUpdate = this.displayUpdate.bind(this)
  }


componentWillMount() {
  this.props.requestSingleUser(this.props.match.params.userId)
}


displayUpdate() {
  this.props.history.push(`${this.props.currentUser.id}/update`)
}



  render() {
    const { currentUser, userDetail } = this.props
    let userMatch = false
    if (currentUser.id === userDetail.id) {
      userMatch = true
    }

    const renderForm = userMatch ?
      this.userMatchRender() : <div></div>
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
            {userMatch ? <button onClick={this.displayUpdate}>Update Profile</button> : <div></div> }
            
          </div>
          <Route path="/users/:id/update" render={() => (
              <UpdateForm
                userDetail={this.props.userDetail}
                currentUser={this.props.currentUser}
                updateCurrentUser={this.props.updateCurrentUser} />
          )} />
        </div>
      </div>
    )
  }
}

export default userDetail