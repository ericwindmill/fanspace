 import React from 'react'
 import { Link } from 'react-router-dom'

 class CommentDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      title: this.props.comment.title,
      body: '',
      setlist_id: this.props.comment.setlist_id,
      user_id: this.props.comment.user_id
    }
    this.handleSubmit = this.handleSubmit.bind(this)
    this.handleClick = this.handleClick.bind(this)
    this.userMatchRender = this.userMatchRender.bind(this)
  }


  handleClick(comment){
    return e => {
      e.preventDefault();
      return this.props.deleteComment(comment)
      }

  }

  handleSubmit(comment) {
    return e => {
      e.preventDefault()
      return this.props.updateComment(Object.assign(comment, this.state))
      .then(
        this.setState({
          body: ""
        })
      )
    }    
  }

  update(property) {
    return e => this.setState({ [property]: e.target.value })
  }

  userMatchRender() {
    let {comment} = this.props
    return(
        <div className="edit-comments">
          <form onSubmit={this.handleSubmit(comment)}>
            <textarea className="update-comment-text" 
              value={this.state.body}
              placeholder="Change comment..."
              onChange={this.update('body')}
            />
            <button className="comment-update-button">Update</button>
          </form>
          <button className="comment-update-button" value={comment.id} onClick={this.handleClick(comment)}>
            Delete
          </button>
        </div>
    )
  }


  render() {
    
    const { comment, deleteComment, updateComment, currentUser } = this.props
    let userMatch = false
    if (currentUser.id === comment.user_id){
      userMatch = true
    }
    const renderForm = userMatch ?
      this.userMatchRender() : <div></div>

    return(
     <div className="single-comment-container"> 
       <div className="comment-creator">
         <Link className="comment-creator-name" to={`/users/${comment.user_id}`}>
          <img className="user-comment-img" src={comment.user.profile_img_url} />
          <p>{comment.user.username}</p>
         </Link>
       </div>
       <div className="comment-body">
          <p>{comment.body}</p>
          {renderForm}
        </div>
    </div>

    )
  }
 }   

 export default CommentDetail
    
  