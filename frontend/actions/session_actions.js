import * as APIUtil from '../util/session_api_util'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER'
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS'
export const CLEAR_ERRORS = 'CLEAR ERRORS'

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
})

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
})

export const clearErrors = () => ({
  type: CLEAR_ERRORS
})


export const signup = user => dispatch => (
  APIUtil.signup(user)
    .then(user => {
      dispatch(receiveCurrentUser(user))
      dispatch(clearErrors())
    }, err => (
      dispatch(receiveErrors(err.responseJSON))
    ))
)

export const login = user => dispatch => (
  APIUtil.login(user)
    .then(user => {
      dispatch(receiveCurrentUser(user))
      dispatch(clearErrors())
    }, err => (
      dispatch(receiveErrors(err.responseJSON))
    ))
)


export const logout = () => dispatch => (
  APIUtil.logout()
    .then(() => dispatch(receiveCurrentUser(null)))
    .fail(err => dispatch(receiveErrors(err.responseJSON)))
)
