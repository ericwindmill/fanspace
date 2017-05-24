import { connect } from 'react-redux'
import SetlistIndex from './setlist_index'
import {requestAllSetlists} from '../../actions/setlist_actions'
import {selectAllSetlists} from '../../reducers/selectors'
import { newAttend, deleteAttend } from '../../actions/attend_actions'

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  setlists: selectAllSetlists(state)
})

const mapDispatchToProps = dispatch => ({
  requestAllSetlists: () => dispatch(requestAllSetlists()),
  newAttend: (attend) => dispatch(newAttend(attend)),
  deleteAttend: (attend) => dispatch(deleteAttend(attend))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistIndex)
