import React from 'react'
import {Link} from 'react-router-dom'

class FooterNav extends React.Component {

  render(){

    return(
      <div className="footer">

        <div className="footer-grid-a">
        <Link to='/'><h2 className="email-link">eric@fanspace.io</h2></Link>
        </div>

        <div className="footer-grid-b">
          <Link to='/' className='social-icon github'> <i className="fa fa-github" aria-hidden="true"></i></Link>
          <Link to='/' className='social-icon linkedin'><i className="fa fa-linkedin-square" aria-hidden="true"></i></Link>
          <Link to='/' className='social-icon email'><i className="fa fa-envelope" aria-hidden="true"></i></Link>
        </div>

        <div className="footer-grid-c">
          <Link to='/' className='mmj-link nav-link'>My Morning Jacket</Link>
          <p>This app is dedicated to the band that changed my life and the friends Ive made on the journey.</p>
        </div>

        <div className="footer-grid-d">
          <p> <i className="fa fa-copyright" aria-hidden="true"></i> 2017 </p>
            <Link to='/' className="nav-link name-link">Eric Windmill</Link>
        </div>
      </div>
    )
  }
}


export default FooterNav