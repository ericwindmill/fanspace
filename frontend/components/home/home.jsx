import React from 'react'
import { Link } from 'react-router-dom'
import TopNav from '../navs/top_nav_container'
import Footer from '../navs/footer'


const Home = () => (
  <div className="landing-page" > 
    <TopNav />
      <section className="module parallax parallax-1">
        <div className="container container-1">
        <div className="background">

        </div>
          <h1>Metrics for Mega Fans</h1>
          <h3>Track the concerts you go to, and connect with other fans of the 'the best live band in the world.'</h3>
          <p> - L.A. Weekly </p>
          <Link className="btn landing-btn" to="/sign-up">Sign Up Today</Link>
            <div className="landing-learn-more">
              <h4 className="landing-learn-more-text">Learn About MMJStatTracker</h4>
              <i className="fa fa-angle-double-down" aria-hidden="true"></i>
            </div>
        </div>
      </section>

      <section className="module content">
        <div className="container container-2">



          <div className="container-2-copy">
            <h1 className="header">What's FanSpace?</h1>
            <h2 className="discover">Discover </h2>
            <h3 className="discover-copy">A library of MMJ's past show's setlists, posters, and bootlegs.</h3>
            <h2 className="connect">Connect</h2>
            <h3 className="connect-copy">Share your concert experiences with other My Morning Jacket fans.</h3>
            <h2 className="track">Track</h2>
            <h3 className="track-copy">Keep track of your personal metrics. The shows you've been to, the songs you've seen, and more.</h3>
            <img className="sf-1 posters" src="http://res.cloudinary.com/ericwindmill/image/upload/v1495466648/posters/2012_08_03_pijwdn.jpg" />
          </div>
        </div>
      </section>

     

    
    <Footer />
  </div>
    
)


export default Home