import { values } from 'lodash'



export const uniqCities = state => {
  console.log(state)
  const cities = state.userDetail.setlist.map((set) => {
    return set.city
  })

  return Array.from(new Set(cities))
}

export const uniqVenues = state => {
  const cities = state.userDetail.setlist.map((set) => {
    return set.city
  })

  return Array.from(new Set(cities))
}




