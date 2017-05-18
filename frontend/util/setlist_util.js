export const fetchAllSetlists = () => (
  $.ajax({
    method: 'GET',
    url: 'api/setlists'
  })
)

export const fetchSingleSetlist = id => (
  $.ajax({
    method: 'GET',
    url: `api/setlists/${id}`
  })
)
