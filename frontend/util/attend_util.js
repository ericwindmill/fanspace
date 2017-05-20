export const addAttend = attend => (
  $.ajax({
    method: 'POST',
    url: 'api/attends',
    data: {attend}
  })
)
