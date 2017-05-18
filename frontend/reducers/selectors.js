import { values } from 'lodash'

export const selectAllSetlists = state => (
  values(state.setlists)
)
