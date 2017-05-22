import React from 'react'
import CommentForm from './comment_form'
import CommentDetail from './comment_detail'
import selectAllUsers from '../../reducers/selectors'


class Comments extends React.Component {
  constructor(props){
    super(props)
  }

  componentWillMount(){
    this.props.requestAllUsers()
  }



render() {
    const { comments, deleteComment } = this.props.setlistDetail


    return (
      <div className="comment-index">
        <h2>Join the Discussion</h2>
          <ul className="comment-list">
            {comments.map(comment => (
              <li key={comment.id}> 
                <CommentDetail
                  comment={comment}
                  setlistDetail={this.props.setlistDetail}
                  currentUser={this.props.currentUser}
                  deleteComment={this.props.deleteComment}
                  updateComment={this.props.updateComment}
                  users={this.props.users}
                />
              </li>
            ))}
          </ul>
        <CommentForm 
        setlistDetail={this.props.setlistDetail}
        currentUser={this.props.currentUser}
        newComment={this.props.newComment}
        userDetail={this.props.userDetail} />
      </div>
    )
  }
}

export default Comments