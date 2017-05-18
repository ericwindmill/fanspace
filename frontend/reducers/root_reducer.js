import { combineReducers } from 'redux'
import sessionReducer from './session_reducer'
import setlistReducer from './setlist_reducer'
import setlistDetailReducer from './setlist_detail_reducer'

const rootReducer = combineReducers({
  session: sessionReducer,
  setlists: setlistReducer,
  setlistDetail: setlistDetailReducer
})

export default rootReducer
