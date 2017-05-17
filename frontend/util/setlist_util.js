export const fetchAllSetlists = () => (
  $.ajax({
    method: 'GET',
    url: 'api/setlists'
  })
)
