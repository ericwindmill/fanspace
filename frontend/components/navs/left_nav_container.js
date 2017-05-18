import { connect } from 'react-redux'
import LeftNav from './top_nav'
import { logout } from '../../actions/session_actions'

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
})

export default connect(mapStateToProps, mapDispatchToProps)(LeftNav)
