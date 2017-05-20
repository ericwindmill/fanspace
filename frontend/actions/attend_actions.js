import * as APIUtil from '../util/attend_util'

export const RECEIVE_NEW_ATTEND = 'RECEIVE_NEW_ATTEND'

export const receiveNewAttend = attend => ({
  type: RECEIVE_NEW_ATTEND,
  attend
})

export const newAttend = attend => dispatch => (
  APIUtil.addAttend(attend)
    .then(attend => dispatch(receiveNewAttend(attend)))
)
