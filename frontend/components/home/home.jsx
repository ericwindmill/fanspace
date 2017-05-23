import React from 'react'
import { Link } from 'react-router-dom'
import TopNav from '../navs/top_nav_container'
import Footer from '../navs/footer'
import ScrollableAnchor from 'react-scrollable-anchor'


const Home = () => (
  <div className="landing-page" > 
    <TopNav />
      <section className="module parallax parallax-1">
        <div className="container container-1">
        <div className="background"></div>
          <h1>A place for mega fans.</h1>
          <Link className="btn landing-btn" to="/sign-up">Sign Up Today</Link>
            <div className="landing-learn-more">
              <h4 className="landing-learn-more-text">Learn About FansSapce</h4>
              <i className="fa fa-angle-double-down" aria-hidden="true"></i>
            </div>
        </div>
      </section>

      <section className="module content">
        <div className="container container-2">
          <ScrollableAnchor id={'connect'}><h2>Connect</h2></ScrollableAnchor>
          <h3>Geek out with with other giant nerds</h3>
          <h2>Follow </h2>
          <h3>Keep track of all the past and future shows.</h3>
          <h2>Track</h2>
          <h3>Its 2017! You Need Metrics!</h3>
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

      <section className="module parallax parallax-3">
        <div className="container container-5">
          <h1>WEB COPY HERE</h1>
        </div>
      </section>

      <section className="module content">
        <div className="container container-6">
          <h2>Lorem Ipsum Dolor</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
        </div>
      </section>
    <Footer />
  </div>
    
)


export default Home