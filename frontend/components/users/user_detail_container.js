import { connect } from 'react-redux'
import { withRouter } from 'react-router-dom'
import { requestSingleUser, updateCurrentUser } from '../../actions/user_actions'
import userDetail from './user_detail'

const mapStateToProps = state => ({
  userDetail: state.userDetail,
  currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
  requestSingleUser: (id) => dispatch(requestSingleUser(id)),
  updateCurrentUser: (user) => dispatch(updateCurrentUser(user))
})

export default withRouter(connect(
    mapStateToProps,
    mapDispatchToProps
  )(userDetail))
