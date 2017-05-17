import { connect } from 'react-redux'
import SetlistIndex from './setlist_index'
import {requestAllSetlists} from '../../actions/setlist_actions'
import {selectAllSetlists} from '../../reducers/selectors'

const mapStateToProps = state => ({
  setlists: selectAllSetlists(state)
})

const mapDispatchToProps = dispatch => ({
  requestAllSetlists: () => dispatch(requestAllSetlists())
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistIndex)
