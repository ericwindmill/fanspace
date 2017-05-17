import React from 'react' 
import SetlistIndexItem from './setlist_index_item'

class SetlistIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestAllSetlists();
  }



  render() {
    const { setlists } = this.props


    return(
      <section className="setlist-index-component">
        <h1> Were You There? </h1>
          <div className="poster-index-grid">
            <ul>
              {setlists.map(setlist => <SetlistIndexItem key={setlist.id} setlist={setlist} /> )}
            </ul>
          </div> 
      </section>
    )
  }
}

export default SetlistIndex