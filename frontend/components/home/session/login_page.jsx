import React from 'react'
import { AuthRoute } from '../../../util/route_util.jsx'
import SessionFormContainer from './session_form_container'

const LoginPage = () => (
  <div className="login-page">
    <div className="login-form-container"> 
      <AuthRoute path="/log-in" component={SessionFormContainer} />
      <AuthRoute path="/sign-up" component={SessionFormContainer} />
    </div>
  </div>
)


export default LoginPage