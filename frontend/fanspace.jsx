import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import Root from './components/root'

// temp vars for testing!
import {fetchAllSetlists} from './util/setlist_util'
import {receiveAllSetlists, requestAllSetlists} from './actions/setlist_actions'

window.fetchAllSetlists = fetchAllSetlists
window.receiveAllSetlists = receiveAllSetlists
window.requestAllSetlists = requestAllSetlists


document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser){
    const preLoadedState = { session: { currentUser: window.currentUser } }
    store = configureStore(preLoadedState)
    delete window.currentUser
  } else {
    store = configureStore()
  }
  window.store = store
  const root = document.getElementById('root')
  ReactDOM.render(<Root store={ store }/>, root)
})