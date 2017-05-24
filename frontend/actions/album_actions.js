import {fetchAlbums} from './../util/album_util'

export const RECEIVE_ALL_ALBUMS = 'RECEIVE_ALL_ALBUMS'

export const receiveAllAlbums = albums => ({
  type: RECEIVE_ALL_ALBUMS,
  albums
})

export const requestAllAlbums = () => dispatch => (
  fetchAlbums()
    .then(albums => dispatch(receiveAllAlbums(albums)))
)
