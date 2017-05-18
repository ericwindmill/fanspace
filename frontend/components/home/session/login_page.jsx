import React from 'react'
import { AuthRoute } from '../../../util/route_util.jsx'
import SessionFormContainer from './session_form_container'
import TopNav from '../../navs/top_nav_container'


const LoginPage = () => (
  <div>
    <TopNav />
    <div className="login-page">
      <div className="login-form-container"> 
        <AuthRoute path="/log-in" component={SessionFormContainer} />
        <AuthRoute path="/sign-up" component={SessionFormContainer} />
      </div>
    </div>
  </div>
)


export default LoginPage