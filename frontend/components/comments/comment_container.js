import { connect } from 'react-redux'
import Comments from './comments'
import { withRouter } from 'react-router-dom'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { newComment, deleteComment, updateComment } from '../../actions/comment_actions'


const mapStateToProps = (state, ownProps) => {
  return ({
    setlistDetail: ownProps.setlistDetail,
    currentUser: state.session.currentUser

  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id)),
  newComment: (comment) => dispatch(newComment(comment)),
  deleteComment: (comment) => dispatch(deleteComment(comment)),
  updateComment: (comment) => dispatch(updateComment(comment))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(Comments))
