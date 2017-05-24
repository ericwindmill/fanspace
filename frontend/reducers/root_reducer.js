import { combineReducers } from 'redux'
import sessionReducer from './session_reducer'
import setlistReducer from './setlist_reducer'
import setlistDetailReducer from './setlist_detail_reducer'
import userReducer from './user_reducer'
import userDetailReducer from './user_detail_reducer'
import albumReducer from './album_reducer'

const rootReducer = combineReducers({
  session: sessionReducer,
  setlists: setlistReducer,
  setlistDetail: setlistDetailReducer,
  users: userReducer,
  userDetail: userDetailReducer,
  albums: albumReducer
})

export default rootReducer
