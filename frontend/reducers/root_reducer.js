import { combineReducers } from 'redux'
import sessionReducer from './session_reducer'
import setlistReducer from './setlist_reducer'

const rootReducer = combineReducers({
  session: sessionReducer,
  setlists: setlistReducer
})

export default rootReducer
