import { values } from 'lodash'



export const uniqCities = state => {
  const cities = state.userDetail.setlist.map((set) => {
    return set.city
  })
  return Array.from(new Set(cities))
}

export const uniqVenues = state => {
  const venues = state.userDetail.setlist.map((set) => {
    return set.venue
  })
  return Array.from(new Set(venues))
}

export const performances = state => {
  const performances = []
  state.userDetail.setlist.forEach((set) => {
    set.set.forEach((song) => {
      performances.push(song)
    })
  })
  return Array.from(new Set(performances))
}

export const uniqSongs = state => {
  const songs = performances(state)

  var flags = {}
  var uniqSongs = songs.filter(function (entry) {
    if (flags[entry.title]) {
      return false
    }
    flags[entry.title] = true
    return true
  })

  return uniqSongs
}

export const albumPercent = state => {
  const songs = uniqSongs(state)
  let album = {
    1: {
      songs: []
    },
    2: {
      songs: []
    },
    3: {
      songs: []
    }
  }
  songs.forEach(song => {
    Object.keys(album).forEach(id => {
      if (parseInt(song.album_id) === parseInt(id) && !(album[id].songs.includes(song.title))) {
        album[id].songs.push(song.title)
      }
    })
  })

  
  const tnFire = Math.floor((album[1].songs.length / 16) * 100)
  console.log(tnFire)
}





