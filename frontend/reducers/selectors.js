import { values } from 'lodash'

export const selectAllSetlists = state => (
  values(state.setlists)
)

export const selectSetlistSongs = state => (
  values(state.setlistDetail.set.each((song) => {
    return song
  })
))
