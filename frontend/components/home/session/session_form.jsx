import React from 'react'
import { withRouter } from 'react-router'
import { Link } from 'react-router-dom' 

class SessionForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: "",
      password: "",
    }

    this.handleSubmit = this.handleSubmit.bind(this)
    this.updateState = this.updateState.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state)
    this.props.processForm(user)
  }

  updateState(key) {
    return (e) => {
      this.setState({[key]: e.target.value});
    }
  }



  render () {
    console.log(this.props.formType)
    const header = (this.props.formType === 'login') ? "Log In" : "Sign Up"
    const linkText = (this.props.formType === 'login') ? "Sign Up" : "Log In"
    const link = (this.props.formType === 'login') ? "/sign-up" : "/log-in"
    return(
      <div className="sessionForm">
         <form> 
          <h2>{header}</h2>
          <input type="text" value={this.state.username} 
            onChange={this.updateState("username")} placeholder="username"></input>
          <input type="password" value={this.state.password}
            onChange={this.updateState("password")} placeholder="password"></input>
          <input type="submit" value={header} onClick={this.handleSubmit}></input>
        </form>
        <Link to={link}>{linkText}</Link>
      </div>
    )
  }
}

export default withRouter(SessionForm)