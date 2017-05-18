import React from 'react'

class SetlistDetail extends React.Component {
  constructor(props) {
    super(props)

  
  }

  componentDidMount() {
    this.props.requestSingleSetlist(this.props.match.params.setlistId)
  }

  componentWillReceiveProps(newProps) {
    if (this.props !== newProps) {
      this.props.requestSingleSetlist(newProps.match.params.setlistId)
    }
  }




  render() {

    return (
      <div>
        <h1> hello from setlist detail! </h1>
        <h1> {this.props.setlistDetail.city} </h1>
        <h1> {this.props.setlistDetail.date} </h1>
        <h1> {this.props.setlistDetail.venue} </h1>
      </div>
    )
  }
}

export default SetlistDetail