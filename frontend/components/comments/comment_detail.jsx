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
    return e => this.props.deleteComment(comment)
  }

  handleSubmit(comment) {
    return e => (
      this.props.updateComment(Object.assign(comment, this.state))
    ).then(
      () => this.setState({
        body: ""
      })
    )
  }

  update(property) {
    return e => this.setState({ [property]: e.target.value })
  }

  userMatchRender() {
    let {comment} = this.props
    return(
      <div>
        <div className="edit_comments">
          <form onSubmit={this.handleSubmit(comment)}>
            <textarea 
              value={this.state.body}
              placeholder="Comment"
              onChange={this.update('body')}
            />
            <button>Update Comment</button>
          </form>
          <button value={comment.id} onClick={this.handleClick(comment)}>
            Delete Comment
          </button>
        </div>
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
     <div> 
       <div>
         <Link to={`/users/${comment.user_id}`}><p>{comment.user.username}</p></Link>
         <p>{comment.title}</p>
         <p>{comment.body}</p>
         <p>{comment.id}</p>
       </div>
        {renderForm}
      </div>

    )
  }
 }   

 export default CommentDetail
    
  