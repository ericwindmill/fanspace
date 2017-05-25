import { merge } from 'lodash'
import { RECEIVE_CURRENT_USER, RECEIVE_ERRORS, CLEAR_ERRORS } from '../actions/session_actions'

const nullUser = {
  currentUser: null,
  errors: []
}

const sessionReducer = (state = nullUser, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      action.errors = []
      return merge({}, state, {currentUser: action.currentUser})
    case RECEIVE_ERRORS:
      return {currentUser: null, errors: action.errors}
    case CLEAR_ERRORS:
      return merge({}, state, {errors: []})
    default:
      return state
  }
}

export default sessionReducer
