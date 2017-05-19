import * as APIUtil from './../util/setlist_util'

export const RECEIVE_ALL_SETLISTS = 'RECEIVE_ALL_SETLISTS'
export const RECEIVE_SINGLE_SETLIST = 'RECEIVE_SINGLE_SETLIST'

export const receiveAllSetlists = setlists => ({
  type: RECEIVE_ALL_SETLISTS,
  setlists
})

export const receiveSingleSetlist = setlist => ({
  type: RECEIVE_SINGLE_SETLIST,
  setlist
})

export const requestAllSetlists = () => dispatch => (
  APIUtil.fetchAllSetlists()
    .then(setlists => dispatch(receiveAllSetlists(setlists)))
)

export const requestSingleSetlist = (id) => dispatch => (
  APIUtil.fetchSingleSetlist(id)
    .then(setlist => dispatch(receiveSingleSetlist(setlist)))
)
