import { connect } from 'react-redux'
import Comments from './comments'
import { withRouter } from 'react-router-dom'
import { newComment, deleteComment, updateComment } from '../../actions/comment_actions'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { requestAllUsers, requestSingleUser } from '../../actions/user_actions'
import { selectCommentCreator } from '../../reducers/selectors'


const mapStateToProps = (state, ownProps) => {
  return ({
    setlistDetail: ownProps.setlistDetail,
    currentUser: state.session.currentUser
  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id)),
  requestAllUsers: () => dispatch(requestAllUsers()),
  requestSingleUser: (id) => dispatch(requestSingleUser(id)),
  newComment: (comment) => dispatch(newComment(comment)),
  deleteComment: (comment) => dispatch(deleteComment(comment)),
  updateComment: (comment) => dispatch(updateComment(comment))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(Comments))
