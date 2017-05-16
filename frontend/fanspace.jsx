import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import Root from './components/root'


// temp vars for testing!
import * as APIUtil from './util/session_api_util.js'
window.apilogin = APIUtil.login
window.signup = APIUtil.signup
window.logout = APIUtil.logout

import { login } from './actions/session_actions.js'
window.login = login


document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore()
  window.store = store
  const root = document.getElementById('root')
  ReactDOM.render(<Root store={ store }/>, root)
})