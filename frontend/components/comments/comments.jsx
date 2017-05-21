import React from 'react'
import CommentForm from './comment_form'

class Comments extends React.Component {
  constructor(props){
    super(props)

    this.handleClick = this.handleClick.bind(this)
  }

  handleClick(comment){
    return e => this.props.deleteComment(comment)
  }

  render() {
    const { comments, deleteComment } = this.props.setlistDetail
    return (
      
      <div>
        <h2>Comments</h2>
        <ul>
          {comments.map(comment => (
            <li key={comment.id}>
              <p>{this.props.currentUser.username}</p>
              <p>{comment.title}</p>
              <p>{comment.body}</p>
              <p>{comment.id}</p>
              <button value={comment.id} onClick={this.handleClick(comment)}>
                Delete Comment
              </button>
            </li>
          ))}    
        </ul>
        <CommentForm 
        setlistDetail={this.props.setlistDetail}
        currentUser={this.props.currentUser}
        newComment={this.props.newComment} />
      </div>
    )
  }
}

export default Comments