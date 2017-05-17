import React from 'react' 

class SetlistIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestAllSetlists();
  }



  render() {
    const { setlists } = this.props
    console.log(setlists)
    const setlistItem = setlists.map(setlist => {
      return setlist.city
    })
    console.log(setlistItem)
    return(
      <div>
        {setlistItem[0]}
      </div>
    )
  }
}

export default SetlistIndex