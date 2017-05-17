import React from 'react'
import { Link } from 'react-router-dom'

const SetlistIndexItem = ({setlist}) => (
  <li>
    <span> {setlist.id} </span>
    <img src={setlist.poster_img_url}
  </li>
)
