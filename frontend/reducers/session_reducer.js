import { merge } from 'lodash'
import { RECEIVE_CURRENT_USER, RECEIVE_ERRORS } from './actions/sessions_actions'

const defaultState = {
  currentUser: null,
  errors: []
}

const sessionReducer = (state = defaultState, action) => {
  Object.freeze(state)
  let currentUser
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      currentUser = merge({}, state, action.user)
      action.errors = []
      return currentUser
    case RECEIVE_ERRORS:
      currentUser = null
      return merge({}, currentUser, action.errors)
    default:
      return state
  }
}

export default sessionReducer
