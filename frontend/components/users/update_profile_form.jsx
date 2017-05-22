import React from 'react'

class UpdateForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: this.props.currentUser.username,
      tagline: this.props.currentUser.tagline,
      location: this.props.currentUser.location,
      profile_img_url: this.props.currentUser.profile_img_url
    }

    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(currentUser){
    return e => (
      this.props.updateCurrentUser(Object.assign(currentUser, this.state))
        .then(
          this.props.history.replace(`/users/${this.props.currentUser.id}`)
        )
    )
  }

  update(property) {
    return e => this.setState({ [property]: e.target.value });
  }

  render() {
    let {currentUser} = this.props
    return(
    <div className="profile-grid-3">
      <form className="profile-update-form" onSubmit={this.handleSubmit(currentUser)}>
        <label>Username</label> 
        <input
          className="update-profile-textbox"
          type="text"
          value={this.state.username}
          placeholder="Username"
          onChange={this.update('username')}
        />

        <label>Location</label> 
        <input
          className="update-profile-textbox"
          type="text"
          value={this.state.location}
          placeholder="Place"
          onChange={this.update('location')}
        />

        <label>Bio</label> 
        <input
          className="update-profile-bio update-profile-textbox"
          type="text"
          value={this.state.tagline}
          placeholder="Bio"
          onChange={this.update('tagline')}
        />

        <label>Profile Image</label> 
        <input
          className="update-profile-textbox"
          type="text"
          value={this.state.profile_img_url}
          placeholder="Picture"
          onChange={this.update('profile_img_url')}
        />
        <button className="update-profile-button">Submit Changes</button>
      </form>
    </div>
    )
  }
}

export default UpdateForm