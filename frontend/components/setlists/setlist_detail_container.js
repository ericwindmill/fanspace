import { connect } from 'react-redux'
import SetlistDetail from './setlist_detail'
import { requestSingleSetlist } from '../../actions/setlist_actions'
import { withRouter } from 'react-router-dom'

const mapStateToProps = (state) => {
  return ({
    setlistDetail: state.setlistDetail
  })
}

const mapDispatchToProps = dispatch => ({
  requestSingleSetlist: (id) => dispatch(requestSingleSetlist(id))
})

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(SetlistDetail))
