import React from 'react'
import { Link } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'

class UserDetail extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestSingleUser(this.props.match.params.setlistId)
  }

  render() {
    return(
      <h1> HELLO FROM USER DETAIL (PROFILE)
    )
  }
}