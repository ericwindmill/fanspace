export const fetchAllUsers = () => (
  $.ajax({
    method: 'GET',
    url: '/api/users'
  })
)

export const fetchSingleUser = id => (
  $.ajax({
    method: 'GET',
    url: `api/users/${id}`
  })
)

export const updateCurrentUser = user => (
  $.ajax({
    method: 'PATCH',
    url: `api/users/${user.id}`,
    data: {user}
  })
)
