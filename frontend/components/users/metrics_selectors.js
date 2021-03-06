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
  // const songs = uniqSongs(state)
  // let album = {}
  // songs.forEach(song => {
  //   if (Object.keys(album).includes(song.album_id.toString())) {
  //     album[song.album_id].songs.push(song.title)
  //   } else {
  //     album[song.album_id] = {songs: [song.title]}
  //   }
  // })

  let seen = uniqSongsByAlbum(state)
  let allAlbums = values(state.albums)
  let percents = []
  allAlbums.forEach((album, i) => {
    let title = album.title
    let currentAlbum = {}
    seen.forEach(obj => {
      if (obj.title === title) {
        currentAlbum = obj
      }
    })
    if (Object.keys(currentAlbum).length > 0) {
      let albumLength = album.songs.length
      let seenLength = currentAlbum.songs.length

      percents.push({
        title: album.title,
        percent: Math.floor((seenLength / albumLength) * 100)
      })
    }
  })


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



export const showsPerYearGraph = state => {
  let dataArr = showsPerYear(state)
  let showYear = dataArr.map(year => {
    return year.year
  })
  let showCount = dataArr.map(year => {
    return year.count
  })


  let data = {
    labels: [...showYear],
    datasets: [
      {
        label: 'Shows Per Year',
        fill: false,
        lineTension: 0.2,
        backgroundColor: 'rgba(75,192,192,0.4)',
        borderColor: 'rgba(75, 231, 252, 1)',
        borderCapStyle: 'butt',
        borderDash: [],
        borderDashOffset: 0.0,
        borderJoinStyle: 'miter',
        pointBorderColor: 'rgb(0, 114, 130)',
        pointBackgroundColor: '#fff',
        pointBorderWidth: 1,
        pointHoverRadius: 5,
        pointHoverBackgroundColor: 'rgba(75,192,192,1)',
        pointHoverBorderColor: 'rgba(220,220,220,1)',
        pointHoverBorderWidth: 2,
        pointRadius: 1,
        pointHitRadius: 10,
        data: [...showCount]
      }
    ]
  }

  return data
}
