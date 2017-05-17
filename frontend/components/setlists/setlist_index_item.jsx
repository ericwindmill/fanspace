import React from 'react'
import { Link } from 'react-router-dom'

const SetlistIndexItem = ({setlist}) => {
 const background_image = {  
   backgroundImage: `url(${setlist.poster_img_url})`
 }
 return (
    <li className="setlist-index-item">
      <div className="setlist-index-poster" style={background_image} alt={setlist.date}></div>
      <p className="setlist-index-info"> {setlist.city}, {setlist.state} {setlist.date}</p>
    </li>
 )
}


export default SetlistIndexItem