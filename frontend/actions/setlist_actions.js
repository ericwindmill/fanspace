import * as APIUtil from './../util/setlist_util'

export const RECEIVE_ALL_SETLISTS = 'RECEIVE_ALL_SETLISTS'

export const receiveAllSetlists = setlists => ({
  type: RECEIVE_ALL_SETLISTS,
  setlists
})

export const requestAllSetlists = () => dispatch => (
  APIUtil.fetchAllSetlists()
    .then(setlists => dispatch(receiveAllSetlists(setlists)))
)
