export const addAttend = attend => (
  $.ajax({
    method: 'POST',
    url: 'api/attends',
    data: {attend}
  })
)

export const deleteAttend = attendId => (
  $.ajax({
    method: 'DELETE',
    url: `api/attends/${attendId}`
  })
)
