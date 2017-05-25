
import { values } from 'lodash'

export const selectAllSetlists = state => (
  values(state.setlists)
)



export const SetlistsSortedByYear = state => {
  let setlists = selectAllSetlists(state)
  let sortedSetlist = {}

  const sorted = setlists.sort(function (a, b) {
    return parseInt(a.date) - parseInt(b.date)
  })

  sorted.forEach(setlist => {
    let year = parseInt(setlist.date)
    if (!sortedSetlist[year]) {
      sortedSetlist[year] = [setlist]
    } else {
      sortedSetlist[year].push(setlist)
    }
  })

  const sortedSetArr = []
  Object.entries(sortedSetlist).forEach(([key, val]) => {
    sortedSetArr.push({
      'year': key,
      'setlists': val
    })
  })

  return sortedSetArr
}


export const SetlistsSortedByCity = state => {
  let setlists = selectAllSetlists(state)
  let sortedSetlist = {}

  setlists.forEach(setlist => {
    let city = setlist.city
    if (!sortedSetlist[city]) {
      sortedSetlist[city] = [setlist]
    } else {
      sortedSetlist[city].push(setlist)
    }
  })

  const sortedSetArr = []
  Object.entries(sortedSetlist).forEach(([key, val]) => {
    sortedSetArr.push({
      'city': key,
      'setlists': val
    })
  })

  return sortedSetArr
}
