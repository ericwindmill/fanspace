import React from 'react'

class SongList extends React.Component {



  render() {
    const songs = this.props.songs.forEach(song => console.log(song))
    return (
     <ul>
      {this.props.songs.map(song => 
        <li key={song.id}> 
          <p>{song.title}</p>
          <p>{song.album.title}</p>  
        </li>
      )}
     </ul>
    )
  }
}

export default SongList