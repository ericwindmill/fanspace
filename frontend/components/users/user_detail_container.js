import { connect } from 'react-redux'
import { withRouter } from 'react-router-dom'
import { requestSingleUser, updateCurrentUser } from '../../actions/user_actions'
import { requestAllAlbums } from '../../actions/album_actions'
import userDetail from './user_detail'
import * as Metrics from './metrics_selectors'
import { requestAllSetlists } from '../../actions/setlist_actions'

const mapStateToProps = state => ({
  userDetail: state.userDetail,
  currentUser: state.session.currentUser,
  albums: state.albums,
  uniqCities: Metrics.uniqCities(state),
  uniqVenues: Metrics.uniqVenues(state),
  performances: Metrics.performances(state),
  uniqSongs: Metrics.uniqSongs(state),
  albumPercent: Metrics.albumPercent(state),
  showsPerYear: Metrics.showsPerYear(state),
  uniqSongsByAlbum: Metrics.uniqSongsByAlbum(state)
})

const mapDispatchToProps = dispatch => ({
  requestSingleUser: (id) => dispatch(requestSingleUser(id)),
  requestAllAlbums: () => dispatch(requestAllAlbums()),
  updateCurrentUser: (user) => dispatch(updateCurrentUser(user)),
  requestAllSetlists: () => dispatch(requestAllSetlists())

})

export default withRouter(connect(
    mapStateToProps,
    mapDispatchToProps
  )(userDetail))
