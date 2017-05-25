import React from 'react'
import {Link} from 'react-router-dom'

class FooterNav extends React.Component {

  render(){

    return(
      <div className="footer">

        <div className="footer-grid-a">
        <a href='mailto:ericwindmill@gmail.com'><h2 className="email-link">eric@fanspace.io</h2></a>
        </div>

        <div className="footer-grid-b">
          <a href='https://github.com/ericwindmill/fanspace' className='social-icon github'> <i className="fa fa-github" aria-hidden="true"></i></a>
          <a href='https://www.linkedin.com/in/eric-windmill-71843849/' className='social-icon linkedin'><i className="fa fa-linkedin-square" aria-hidden="true"></i></a>
          <a href='mailto:ericwindmill@gmail.com' className='social-icon email'><i className="fa fa-envelope" aria-hidden="true"></i></a>
        </div>

        <div className="footer-grid-c">
          <a href='https://mymorningjacket.com/' className='mmj-link nav-link'>My Morning Jacket</a>
          <p>This app is dedicated to the band that changed my life and the friends Ive made on the journey.</p>
        </div>

        <div className="footer-grid-d">
          <p> <i className="fa fa-copyright" aria-hidden="true"></i> 2017 </p>
            <a href='http://www.ericwindmill.com/' className="nav-link name-link">Eric Windmill</a>
        </div>
      </div>
    )
  }
}


export default FooterNav