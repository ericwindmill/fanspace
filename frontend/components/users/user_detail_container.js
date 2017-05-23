import { connect } from 'react-redux'
import { withRouter } from 'react-router-dom'
import { requestSingleUser, updateCurrentUser } from '../../actions/user_actions'
import userDetail from './user_detail'
import * as Metrics from './metrics_selectors'

const mapStateToProps = state => ({
  userDetail: state.userDetail,
  currentUser: state.session.currentUser,
  uniqCities: Metrics.uniqCities(state),
  uniqVenues: Metrics.uniqVenues(state),
  performances: Metrics.performances(state),
  uniqSongs: Metrics.uniqSongs(state),
  albumPercent: Metrics.albumPercent(state)
})

const mapDispatchToProps = dispatch => ({
  requestSingleUser: (id) => dispatch(requestSingleUser(id)),
  updateCurrentUser: (user) => dispatch(updateCurrentUser(user))

})

export default withRouter(connect(
    mapStateToProps,
    mapDispatchToProps
  )(userDetail))
