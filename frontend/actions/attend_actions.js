import * as APIUtil from '../util/attend_util'
import { requestSingleSetlist } from './setlist_actions'


export const newAttend = attend => dispatch => (
  APIUtil.addAttend(attend)
    .then(({ setlist_id }) => dispatch(requestSingleSetlist(setlist_id)))
)

export const deleteAttend = attend => dispatch => (
  APIUtil.deleteAttend(attend)
    .then(({ setlist_id }) => dispatch(requestSingleSetlist(setlist_id)))
)

