import { merge } from 'lodash'
import { RECEIVE_ALL_SETLISTS } from './../actions/setlist_actions'

const setlistReducer = (state = {}, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_ALL_SETLISTS:
      return merge({}, state, action.setlists)
    default:
      return state
  }
}

export default setlistReducer
