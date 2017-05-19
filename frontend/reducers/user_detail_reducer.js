import { merge } from 'lodash'
import { RECEIVE_SINGLE_USER } from '../actions/user_actions'

const defaultUser = {
  username: '',
  email: '',
  image_url: '',
  location: '',
  about: '',
  status: ''
}

const userDetailReducer = (state = defaultUser, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_SINGLE_USER:
      return merge({}, action.user)
    default: 
      return state
  }
}

export default userDetailReducer
