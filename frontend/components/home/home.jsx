import React from 'react'
import { Link } from 'react-router-dom'
import TopNav from '../navs/top_nav_container'
import Footer from '../navs/footer'


const Home = () => (
  <div className="landing-page" > 
    <TopNav />
    <div className="parallax">

      <div id="group1" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
          <div className="landing-copy">
            <div className="landing-grid-a">
              <h1 className="copy-header">A place for mega fans.</h1>
            </div>
            <Link className="btn landing-btn landing-grid-b" to="/sign-up">Sign Up Today</Link>
          <div className="landing-grid-c">
          </div>
         </div>
        </div>
        <div className="parallax__layer parallax__layer--back"></div>
      </div>
      <div className="landing-learn-more">
        <h4 className="landing-learn-more-text">Learn About FansSapce</h4>
        <i className="fa fa-angle-double-down" aria-hidden="true"></i>
      </div>
      <div id="group4" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
          <h1>Fanspace.io</h1>
          <h2>Connect</h2>
          <h3>Geek out with with other giant nerds</h3>
          <h2>Follow </h2>
          <h3>Keep track of all the past and future shows.</h3>
          <h2>Track</h2>
          <h3>Its 2017! You Need Metrics!</h3>
        </div>
      </div>

      <div id="group3" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
           <h1> Metrics </h1>
           <h2> Learn about the shows youve seen </h2>
           <p> ** insert metrics pictures </p>
        </div>
        <div className="parallax__layer parallax__layer--back"></div>
      </div>


      <div id="group4" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
          <h1 className="copy">Its Easy.</h1>
          <ul>
            <li>Create an Account</li>
            <li>Browse the shows</li>
            <li>Select the shows youve seen</li>
            <li>See your results!</li>
          </ul>
        </div>
      </div>

      <div id="group3" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
           <h1 className="copy"> Remember: </h1>
           <h2>You arent a true fan unless you can prove your value!</h2>
        </div>
        <div className="parallax__layer parallax__layer--back"></div>
      </div>
    </div>
  <Footer />
</div>
    
)


export default Home