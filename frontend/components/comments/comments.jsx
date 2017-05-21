import React from 'react'
import CommentForm from './comment_form'
import CommentDetail from './comment_detail'


class Comments extends React.Component {
  constructor(props){
    super(props)
  }

render() {
    const { comments, deleteComment } = this.props.setlistDetail
    return (
      <div>
        <h2>Comments</h2>
          
          <ul>
            {comments.map(comment => (
              <li key={comment.id}> 
                <CommentDetail 
                  comment={comment}
                  setlistDetail={this.props.setlistDetail}
                  currentUser={this.props.currentUser}
                  deleteComment={this.props.deleteComment}
                  updateComment={this.props.updateComment}
                />
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