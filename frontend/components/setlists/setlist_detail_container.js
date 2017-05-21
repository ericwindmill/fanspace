import { connect } from 'react-redux'
import SetlistDetail from './setlist_detail'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { withRouter } from 'react-router-dom'
import { newAttend, deleteAttend } from '../../actions/attend_actions'
// import { newComment, deleteComment } from '../../actions/comment_actions'

const mapStateToProps = (state) => {
  return ({
    setlistDetail: state.setlistDetail,
    currentUser: state.session.currentUser
  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id)),
  newAttend: (attend) => dispatch(newAttend(attend)),
  deleteAttend: (attend) => dispatch(deleteAttend(attend)),
  // newComment: (comment) => dispatch(newComment(comment)),
  // deleteComment: (comment) => dispatch(deleteComment(comment))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistDetail))
