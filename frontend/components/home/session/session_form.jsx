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
      <div className="session-form-container" >
         <form className="session-form"> 
          <h2 className="auth-form-head session-grid-a">{header}</h2>
          <input className="txt-input session-grid-b" type="text" value={this.state.username} 
            onChange={this.updateState("username")} placeholder="username"></input>
          <input className="txt-input session-grid-c" type="password" value={this.state.password}
            onChange={this.updateState("password")} placeholder="password"></input>
          <input className="btn sign-up-btn session-grid-d" type="submit" value={header} onClick={this.handleSubmit}></input>
        <Link className="sign-up-link session-grid-e" to={link}>or {linkText}</Link>
        </form>
      </div>
    )
  }
}

export default withRouter(SessionForm)