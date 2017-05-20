import { connect } from 'react-redux'
import SetlistDetail from './setlist_detail'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { withRouter } from 'react-router-dom'
import { newAttend } from '../../actions/attend_actions'


const mapStateToProps = (state) => {
  return ({
    setlistDetail: state.setlistDetail,
    user_id: state.session.currentUser.id
  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id)),
  newAttend: (attend) => dispatch(newAttend(attend))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistDetail))
