import { connect } from 'react-redux'
import SessionForm from './session_form'
import { login, signup } from '../../../actions/session_actions'



const mapStateToProps = (state, ownProps) => {
  let type = (ownProps.location.pathname === '/log-in') ? 'login' : 'signup'
  return ({
    loggedIn: Boolean(state.session.currentUser),
    errors: state.session.errors,
    formType: type
  })
}

const mapDispatchToProps = (dispatch, ownProps) => {
  let action = (ownProps.location.pathname === '/log-in') ? login : signup
  return ({
    processForm: (user) => dispatch(action(user))
  })
}

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)
