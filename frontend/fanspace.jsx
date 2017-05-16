import React from 'react'
import ReactDOM from 'react-dom'


// temp vars for testing!
import * as APIUtil from './util/session_api_util.js'
window.login = APIUtil.login
window.signup = APIUtil.signup
window.logout = APIUtil.logout





document.addEventListener('DOMConententLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<h1>FANSPACE.IO</h1>, root);
});