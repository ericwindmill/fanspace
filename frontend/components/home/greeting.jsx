import React from 'react'
import { Link  } from 'react-router-dom'

class Greeting extends React.Component {
  constructor(props){
    super(props)
    this.loggedInGreeting = this.loggedInGreeting.bind(this);
    this.loggedOutGreeting = this.loggedOutGreeting.bind(this);
  }

  loggedInGreeting() {
    return (
      <div>
        <h3> Welcome {this.props.currentUser.username}</h3>
        <Link to="/" onClick={this.props.logout}>Sign Out</Link>
      </div>
    )
  }

  loggedOutGreeting() {
    return(
      <div className="logged-out-nav">
        <Link to="/log-in">Log In</Link>
        <Link to="/sign-up">Sign Up</Link>
      </div>
    )
  }

  render () {
    const renderComponent = this.props.currentUser ?
      this.loggedInGreeting() : this.loggedOutGreeting();
    return (
      renderComponent
    )
  }
}


export default Greeting