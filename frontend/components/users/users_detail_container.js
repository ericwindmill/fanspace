import { connect } from 'react-redux'
import { withRouter } from 'react-router-dom'
import { requestSingleUser } from '../../actions/user_actions'
import userDetail from './user_detail'

const mapStateToProps = state => ({
  userDetail: state.userDetail
})

const mapDispatchToProps = dispatch => ({
  requestSingleUser: (id) => dispatch(requestSingleUser(id))
})

export default withRouter(connect(
    mapStateToProps,
    mapDispatchToProps
  )(userDetail))
