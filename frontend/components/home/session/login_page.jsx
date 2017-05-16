import React from 'react'
import { AuthRoute } from '../../../util/route_util.jsx'
import SessionFormContainer from './session_form_container'

const LoginPage = () => (
  <div> 
    <h1>LoginPage</h1>
      <AuthRoute path="/log-in" component={SessionFormContainer} />
      <AuthRoute path="/sign-up" component={SessionFormContainer} />
  </div>
)


export default LoginPage