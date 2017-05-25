import React from 'react'
import { Link, Route } from 'react-router-dom'
import LeftNav from '../navs/left_nav_container'
import UpdateForm from './update_profile_form'
import ShowsPerYearAsGraph from './line-graph'





class userDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      formShown: false
    }
    
    this.displayUpdate = this.displayUpdate.bind(this)
  }


componentWillMount() {
  this.props.requestSingleUser(this.props.match.params.userId)
  this.props.requestAllAlbums()
  this.props.requestAllSetlists()
}

componentWillReceiveProps(newProps){
  if(this.props.match.params.userId !== newProps.match.params.userId) {
    newProps.requestSingleUser(newProps.match.params.userId)
   }
}


displayUpdate(e) {
  e.preventDefault()
  if (this.state.formShown) {
    this.props.history.replace(`/users/${this.props.currentUser.id}`)
    this.setState({
      formShown: false
    })
  } else {
    this.props.history.push(`${this.props.currentUser.id}/update`)
    this.setState({
      formShown: true
    })
  }
}


  render() {



    const { currentUser, userDetail } = this.props
    let userMatch = false
    if (currentUser.id === userDetail.id) {
      userMatch = true
    }
    const buttonText = this.state.formShown ? <div>Cancel</div> : <div>Update Profile</div>
    return(
      <div className='profile-detail-main'>
        <LeftNav profile_img={userDetail.profile_img_url} />
        <div className="profile-detail-grid"> 

        <section className="profile-info">
          <div className="profile-detail-column-1">
            <img className="profile-img" src={userDetail.profile_img_url} />
          </div>
          <div className="profile-detail-column-2">
            <h1 className="profile-username">{userDetail.username}</h1>
            <p className="profile-location"> Location: {userDetail.location}</p>
            <p className="profile-rank" >{userDetail.rank}</p>
            <p className="profile-tagline" >{userDetail.tagline}</p>
            {userMatch ? (
              <button className="update-profile-button btn" onClick={this.displayUpdate}> {buttonText} </button>
               ) : (
              <div></div> 
             )}
          </div>
        </section>

        <Route path="/users/:id/update" render={() => (
            <UpdateForm
              history={this.props.history}
              userDetail={this.props.userDetail}
              currentUser={this.props.currentUser}
              updateCurrentUser={this.props.updateCurrentUser} />
        )} />

          
            <section className="stats-at-a-glance-table">
              <h3 className="table-glance-header">Stats At a Glance</h3>
              <div className="main-shows grid-box">
                <p className="icon-ticket-1 fontastic"></p>
                <p>Shows</p>
                <p>{this.props.userDetail.setlist.length}</p>
              </div>
              
              <div className="main-cities grid-box">
                <p className="icon-map fontastic"></p>
                <p >Cities</p>
                <p>{this.props.uniqCities.length}</p>
              </div>
              
              <div className="main-venues grid-box">
                <p className="icon-theatre fontastic"></p>
                <p>Venues</p>
                <p>{this.props.uniqVenues.length}</p>
              </div>

              <div className="main-performances grid-box">
                <p className="icon-music fontastic"></p>
                <p>Total Songs</p>
                <p>{this.props.performances.length}</p>
              </div>

              <div className="main-songs grid-box">
                <p className="icon-nuclear fontastic"></p>
                <p>Unique Songs</p>
                <p>{this.props.uniqSongs.length}</p>
              </div>
            </section>

            <section className="album-percentage-widget">
              <h3> Album Percentages </h3>
              <ul>
                {this.props.albumPercent.map(album => {
                  return <li className="album-percentage-item" key={album.title}> 
                  <div className="col-1">{album.title}</div> 
                  <div className="col-2">{album.percent}%</div>
                  </li>
                })}
              </ul>
            </section>


            <section className="shows-per-year-widget">
              <h3> Shows Per Year </h3>
              <ul>
                {this.props.showsPerYear.map(year => {
                  return <li className="shows-per-year-item" key={year.year}>
                    <div className="col-1">{year.year}</div> 
                    <div className="col-2">{year.count}</div>
                  </li>
                })}
              </ul>
            </section>

          <ShowsPerYearAsGraph 
            data={this.props.showsPerYearGraph}
          />
          

          <section className="user-setlists">
            <h3> Shows Attended </h3>
            <ul>
              {this.props.userDetail.setlist.map(set => {
                return (
                  <li className="user-setlist-item" key={set.id}>
                    <Link to={`/setlists/${set.id}`}>{set.date} {set.city}>
                      <img className="user-setlist-item-poster" src={set.poster_img_url} />
                    </Link>
                  </li>
                )
              })}
            </ul>
          </section> 

        <section className="uniq-songs-by-album">
          <h3> Unique Songs By Album </h3>
          <ul>
            {this.props.uniqSongsByAlbum.map(album => {
              return <li className="uniq-songs-album-item" key={album.title}> 
                <div className="col-1">{album.title} : </div>             
                  <ul className="col-2">
                    {album.songs.map(song => {
                    return <li key={song.name}> {song} </li> })}
                  </ul>
            </li>
           })}
          </ul>
        </section>




      
        </div>
      </div>
    )
  }
}

export default userDetail
