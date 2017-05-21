import * as APIUtil from '../util/comment_util'
import { requestSingleSetlist } from './setlist_actions'

export const newComment = comment => dispatch => (
  APIUtil.addComment(comment)
    .then(({setlist_id}) => dispatch(requestSingleSetlist(setlist_id)))
)

export const deleteComment = comment => dispatch => (
  APIUtil.deleteComment(comment)
  .then(({setlist_id}) => dispatch(requestSingleSetlist(setlist_id)))
)
