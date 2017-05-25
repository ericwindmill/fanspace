import React from 'react' 
import { Switch, Route, NavLink } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../../util/route_util.jsx'
import SetlistIndexItem from './setlist_index_item'
import SetlistDetailContainer from './setlist_detail_container'
import LeftNav from '../navs/left_nav_container'

class SetlistIndexByCity extends React.Component {
  constructor(props) {
    super(props)
  }

  componentWillMount() {
    this.props.requestAllSetlists()
  }



  render() {
  const { setlists, currentUser, newAttend, deleteAttend, requestAllSetlists } = this.props
  return(
      <main className="setlist-main">
        <LeftNav />
        <section className="setlist-index-component">
          <h1> Explore the Shows </h1>
            <div>
              <ul className="poster-index-grid">
                {setlists.map(city => {
                  return <li>
                    <h2> {city.city} </h2>
                    <ul>
                       {city.setlists.map(setlist => {
                      return <SetlistIndexItem 
                        key={setlist.id} 
                        setlist={setlist} 
                        currentUser={currentUser}
                        newAttend={newAttend}
                        deleteAttend={deleteAttend}
                        requestAllSetlists={requestAllSetlists}
                      /> }
                    )}
                    </ul>                  
                  </li>
                })}
              </ul>
            </div> 
        </section>
      </main>
    )
  }         
}

export default SetlistIndexByCity