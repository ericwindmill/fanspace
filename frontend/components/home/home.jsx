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

        <div className="posters">
          <img className="poster-redrocks poster" src="http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_300/v1495600264/posters/2016_05_26.jpg" />
          <img className="poster-bonnaroo poster" src="http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_300/v1495466647/posters/2008_06_12_oy4st4.jpg" />
          <img className="poster-2005 poster" src="http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_300/v1495466646/posters/2005_11_05_t4xvcv.jpg" />
          <img className="poster-nyc poster" src="http://res.cloudinary.com/ericwindmill/image/upload/c_scale,w_300/v1495466647/posters/2008_06_20_qvddjk.jpg" />
        </div>

          <div className="container-2-copy">
            <h1>What's FanSpace?</h1>
            <h2>Discover </h2>
            <h3>A library of MMJ's past show's setlists, posters, and bootlegs.</h3>
            <h2>Connect</h2>
            <h3>Share your concert experiences with other My Morning Jacket fans.</h3>
            <h2>Track</h2>
            <h3>Keep track of your personal metrics. The shows you've been to, the songs you've seen, and more.</h3>
          </div>
          
        
        </div>
      </section>

      <section className="module parallax parallax-2">
        <div className="container container-3">
          <h1>Its Easy.</h1>
          <ul>
            <li>Create an Account</li>
            <li>Browse the shows</li>
            <li>Select the shows youve seen</li>
            <li>See your results!</li>
          </ul>
        </div>
      </section>

      <section className="module content">
        <div className="container container-4">
          <h1> Metrics </h1>
           <h2> Learn about the shows youve seen </h2>
           <p> ** insert metrics pictures </p>
        </div>
      </section>

    
    <Footer />
  </div>
    
)


export default Home