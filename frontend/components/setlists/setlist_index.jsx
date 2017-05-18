import React from 'react' 
import { Switch, Route, NavLink } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../../util/route_util.jsx'
import SetlistIndexItem from './setlist_index_item'
import SetlistDetailContainer from './setlist_detail_container'

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
          <div>
            <ul className="poster-index-grid">
              {setlists.map(setlist => <SetlistIndexItem key={setlist.id} setlist={setlist} /> )}
            </ul>
          </div> 
          <div>


          </div>
      </section>

    )
  }
}

export default SetlistIndex