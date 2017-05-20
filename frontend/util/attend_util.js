export const addAttend = attend => (
  $.ajax({
    method: 'POST',
    url: 'api/attend',
    data: {attend}
  })
)

export const deleteAttend = attend => (
  $.ajax({
    method: 'DELETE',
    url: `api/attend/`,
    data: {attend}
  })
)
