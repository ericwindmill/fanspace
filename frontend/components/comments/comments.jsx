import React from 'react'
import CommentForm from './comment_form'
import CommentDetail from './comment_detail'
import selectAllUsers from '../../reducers/selectors'


class Comments extends React.Component {
  constructor(props){
    super(props)


    this.sortComments = this.sortComments.bind(this)
  }

  componentWillMount(){
    this.props.requestAllUsers()
  }

sortComments(comments) {
  comments.sort(function(a, b) {
    return parseInt(a.id) - parseInt(b.id)
  })
}


render() {
    const { comments, deleteComment } = this.props.setlistDetail
    this.sortComments(comments)

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