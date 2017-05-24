import { merge } from 'lodash'
import { RECEIVE_ALL_ALBUMS } from '../actions/album_actions'

const albumReducer = (state = {}, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_ALL_ALBUMS:
      return merge({}, state, action.albums)
    default:
      return state
  }
}

export default albumReducer
