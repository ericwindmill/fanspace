import React from 'react'
import Dropzone from 'react-dropzone'
import request from 'superagent'

const CLOUDINARY_UPLOAD_PRESET = 's31kgua8';
const CLOUDINARY_UPLOAD_URL = 'https://api.cloudinary.com/v1_1/ericwindmill/image/upload';


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
    this.onImageDrop = this.onImageDrop.bind(this)
  }

 
onImageDrop(files) {
  this.handleImageUpload(files[0])
}

handleImageUpload(file) {
    let upload = request.post(CLOUDINARY_UPLOAD_URL)
                        .field('upload_preset', CLOUDINARY_UPLOAD_PRESET)
                        .field('file', file);

    upload.end((err, response) => {
      if (err) {
        console.error(err);
      }

      if (response.body.secure_url !== '') {
        this.setState({
          profile_img_url: response.body.secure_url
        });
      }
    });
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

        <Dropzone
          className="dropzone"
          multiple={false}
          value={this.state.profile_img_url}
          accept="image/*"
          onDrop={this.onImageDrop.bind(this)}>
          <label>Upload Photo</label>
          <i className="fa fa-plus-circle" aria-hidden="true"></i>
        </Dropzone>

        <div className="username-location">
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
        </div>

        <div className="bio">
          <label>Bio</label> 
          <input
            className="update-profile-bio update-profile-textbox"
            type="text"
            value={this.state.tagline}
            placeholder="Bio"
            onChange={this.update('tagline')}
          />
        </div>
        




        <button className="update-profile-button btn submit">Submit Changes</button>
      </form>
    </div>
    )
  }
}

export default UpdateForm