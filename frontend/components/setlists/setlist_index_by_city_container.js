import { connect } from 'react-redux'
import SetlistIndexByCity from './setlist_index_by_city'
import {requestAllSetlists} from '../../actions/setlist_actions'
import {selectAllSetlists, SetlistsSortedByCity} from '../../reducers/selectors'
import { newAttend, deleteAttend } from '../../actions/attend_actions'

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  allSetlists: selectAllSetlists(state),
  setlists: SetlistsSortedByCity(state)
})

const mapDispatchToProps = dispatch => ({
  requestAllSetlists: () => dispatch(requestAllSetlists()),
  newAttend: (attend) => dispatch(newAttend(attend)),
  deleteAttend: (attend) => dispatch(deleteAttend(attend))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistIndexByCity)
