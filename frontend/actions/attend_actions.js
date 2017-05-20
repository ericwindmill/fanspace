import * as APIUtil from '../util/attend_util'

export const RECEIVE_NEW_ATTEND = 'RECEIVE_NEW_ATTEND'
export const DELETE_ATTEND = 'DELETE_ATTEND'

export const receiveNewAttend = attend => ({
  type: RECEIVE_NEW_ATTEND,
  attend
})

export const destroyAttend = attend => ({
  type: DELETE_ATTEND
})

export const newAttend = attend => dispatch => (
  APIUtil.addAttend(attend)
    .then(attend => dispatch(receiveNewAttend(attend)))
)

export const deleteAttend = attendId => dispatch => (
  APIUtil.deleteAttend(attendId)
    .then(attend => dispatch(destroyAttend(attend)))
)

