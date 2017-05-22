import React from 'react'
import { Link, Route } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'
import UpdateForm from './update_profile_form'

class userDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      formShown: false
    }
    
    this.displayUpdate = this.displayUpdate.bind(this)
  }


componentWillMount() {
  this.props.requestSingleUser(this.props.match.params.userId)
}

componentWillReceiveProps(newProps){
  if(this.props.match.params.userId !== newProps.match.params.userId) {
    newProps.requestSingleUser(newProps.match.params.userId)
   }
}


displayUpdate(e) {
  e.preventDefault()
  if (this.state.formShown) {
    this.props.history.replace(`/users/${this.props.currentUser.id}`)
    this.setState({
      formShown: false
    })
  } else {
    this.props.history.push(`${this.props.currentUser.id}/update`)
    this.setState({
      formShown: true
    })
  }
}



  render() {
    const { currentUser, userDetail } = this.props
    let userMatch = false
    if (currentUser.id === userDetail.id) {
      userMatch = true
    }
    const buttonText = this.state.formShown ? <div>Cancel</div> : <div>Update Profile</div>

    
    return(
      <div className='profile-detail-main'>
        <LeftNav profile_img={userDetail.profile_img_url} />
        <div className="profile-detail-grid"> 
          <div className="profile-detail-column-1">
            <img className="profile-img" src={userDetail.profile_img_url} />
          </div>
          <div className="profile-detail-column-2">
            <h1 className="profile-username">{userDetail.username}</h1>
            <p className="profile-location"> Location: {userDetail.location}</p>
            <p className="profile-rank" >{userDetail.rank}</p>
            <p className="profile-tagline" >{userDetail.tagline}</p>

            
            {userMatch ? (
              <button className="update-profile-button" onClick={this.displayUpdate}> {buttonText} </button>
               ) : (
              <div></div> 
             )}
            
          </div>
            <Route path="/users/:id/update" render={() => (
                <UpdateForm
                  history={this.props.history}
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