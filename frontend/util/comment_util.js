export const addComment = comment => (
  $.ajax({
    method: 'POST',
    url: 'api/comment',
    data: {comment}
  })
)

export const deleteComment = comment => (
  $.ajax({
    method: 'DELETE',
    url: `api/comment/`,
    data: {comment}
  })
)