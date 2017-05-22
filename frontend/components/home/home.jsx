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
          <div className="landing-copy landing-grid-a">
            <div className="landing-grid-a">
              <h1>A place for mega fans.</h1><h2>Cause you arent a true fan unless you can prove it with metrics.</h2>
            </div>
            <Link className="btn landing-btn landing-grid-b" to="/sign-up">Sign Up Today</Link>
          </div>
        </div>
        <div className="parallax__layer parallax__layer--back">
          
        </div>
      </div>

      <div id="group2" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
          <h1 className="copy"> COPY </h1>
        </div>
        <div className="parallax__layer parallax__layer--back">
          <h1 className="copy"> background layer </h1>
        </div>
      </div>

      <div id="group3" className="parallax-group">
        <div className="parallax__layer parallax__layer--fore">
           <h1 className="copy"> MORE COPY </h1>
        </div>
        <div className="parallax__layer parallax__layer--base">
          <h1 className="copy"> background </h1>
        </div>
      </div>

      <div id="group4" className="parallax-group">
        <div className="parallax__layer parallax__layer--base">
          <h1 className="copy"> background </h1>
        </div>
      </div>


    </div>
  <Footer />
</div>
    
)


export default Home