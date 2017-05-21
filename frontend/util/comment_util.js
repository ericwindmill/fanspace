export const addComment = comment => (
  $.ajax({
    method: 'POST',
    url: 'api/comment',
    data: {comment}
  })
)

export const deleteComment = comment => {
  return $.ajax({
    method: 'DELETE',
    url: `api/comment`,
    data: {comment}
  })
}

export const updateComment = comment => {
  return $.ajax({
    method: 'PATCH',
    url: 'api/comment',
    data: {comment}

  })
}
