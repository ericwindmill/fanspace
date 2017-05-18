import { merge } from 'lodash'
import { RECEIVE_SINGLE_SETLIST } from './../actions/setlist_actions'

const defaultSetlist = {
  city: '',
  state: '',
  country: '',
  USA: '',
  date: '',
  venue: '',
  poster_img_url: ''
}


const setlistDetailReducer = (state = defaultSetlist, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_SINGLE_SETLIST:
      return merge({}, action.setlist)
    default:
      return state
  }
}

export default setlistDetailReducer
