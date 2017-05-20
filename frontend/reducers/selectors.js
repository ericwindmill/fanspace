import { values } from 'lodash'

export const selectAllSetlists = state => (
  values(state.setlists)
)

export const selectAttendeeIds = state => {
  const attendeeIds = state.setlistDetail.attendees.map((user) => {
    return user.id
  })

  return attendeeIds
}

export const selectCurrentAttend = state => {
  const attendeeIds = state.setlistDetail.attendees.map((user) => {
    return user.id
  })
  console.log(state.session.currentUser.id)
  console.log(attendeeIds)
  console.log(state)
  if (attendeeIds.includes(state.session.currentUser.id)){
    
  }
}
