import React from 'react'

class SongList extends React.Component {



  render() {
    return (
     <ul className="setlist-song-list">
      {this.props.songs.map(song => 
        <li className="setlist-song-object" key={song.id}> 
          <p className="song-title">{song.title}</p>
          <p className="album-title">{song.album.title}</p>  
        </li>
      )}
     </ul>
    )
  }
}

export default SongList