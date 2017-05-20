import { connect } from 'react-redux'
import SetlistDetail from './setlist_detail'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { withRouter } from 'react-router-dom'
import { newAttend, deleteAttend } from '../../actions/attend_actions'
import { selectAttendeeIds, selectCurrentAttend } from '../../reducers/selectors'

const mapStateToProps = (state) => {
  return ({
    setlistDetail: state.setlistDetail,
    user_id: state.session.currentUser.id,
    attendees: selectAttendeeIds(state),
    currentAttend: selectCurrentAttend(state) || {}
  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id)),
  newAttend: (attend) => dispatch(newAttend(attend)),
  deleteAttend: (attend) => dispatch(deleteAttend(attend))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistDetail))
