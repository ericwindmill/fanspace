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
//   const attendeeIds = state.setlistDetail.attendees.map((user) => {
//     return user.id
//   })
//   let currentAttend
//   if (attendeeIds.includes(state.session.currentUser.id)) {
//     currentAttend = state.session.currentUser.attends.find(attend => {
//       if (attend.setlist_id === state.setlistDetail.id) {

//         return attend
//       }
//     })
//   }
//   return currentAttend
}
