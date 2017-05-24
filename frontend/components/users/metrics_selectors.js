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

export const uniqSongsByAlbum = state => {
  const songs = uniqSongs(state)
  const albums = {}
  songs.forEach(song => {
    if (Object.keys(state.albums).length === 0) {
      return ''
    } else {
      if (albums[song.album.title]) {
        albums[song.album.title].push(song.title)
      } else {
        albums[song.album.title] = [song.title]
      }
    }
  })

  const albumsAsArr = []
  Object.entries(albums).forEach(([key, val]) => {
    albumsAsArr.push({
      'title': key,
      'songs': val
    })
  })

  return albumsAsArr
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

  const percents = [
    {
      title: 'The Tennesee Fire',
      percent: Math.floor((album[1].songs.length / 16) * 100)
    },
    {
      title: 'At Dawn',
      percent: Math.floor((album[2].songs.length / 1) * 100)
    },
    {
      title: 'It Still Moves',
      percent: Math.floor((album[3].songs.length / 12) * 100)
    }
  ]

  return percents
}



export const showsPerYear = state => {
  const years = {}
  state.userDetail.setlist.forEach((set) => {
    let year = set.date.slice(0, 4)
    if (years[year]) {
      years[year]++
    } else {
      years[year] = 1
    }
  })
  const yearsArr = []
  Object.entries(years).forEach(([key, val]) => {
    yearsArr.push({
      'year': key,
      'count': val
    })
  })

  return yearsArr
}



