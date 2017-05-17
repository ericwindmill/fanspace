import React from 'react'
import { Link } from 'react-router-dom'

const SetlistIndexItem = ({setlist}) => (
  <li className="setlist-index-item">
   <div className="setlist-index-poster">
      <img src={setlist.poster_img_url} alt={setlist.date}/>
      <p className="setlist-index-info"> {setlist.city}, {setlist.state} {setlist.date}</p>
    </div>
  </li>
)


export default SetlistIndexItem