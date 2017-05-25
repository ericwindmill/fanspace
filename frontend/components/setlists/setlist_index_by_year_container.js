import { connect } from 'react-redux'
import SetlistIndexByYear from './setlist_index_by_year'
import {requestAllSetlists} from '../../actions/setlist_actions'
import {selectAllSetlists, SetlistsSortedByYear} from '../../reducers/selectors'
import { newAttend, deleteAttend } from '../../actions/attend_actions'

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  allSetlists: selectAllSetlists(state),
  setlists: SetlistsSortedByYear(state)
})

const mapDispatchToProps = dispatch => ({
  requestAllSetlists: () => dispatch(requestAllSetlists()),
  newAttend: (attend) => dispatch(newAttend(attend)),
  deleteAttend: (attend) => dispatch(deleteAttend(attend))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistIndexByYear)
