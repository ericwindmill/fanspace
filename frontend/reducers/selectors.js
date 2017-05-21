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
