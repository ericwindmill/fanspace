{
    currentUser: {
        id: 1,
        username: 'rod-stewart'
    },
    setList: {
        date : {
            id: 1,
            songs: ['SongTitle', 'SongTitle', 'SongTitle', 'SongTitle', 'SongTitle', 'SongTitle', 'SongTitle'... ]
            venue: 'Red Rocks Ampitheater',
            date: 01052016,
            city: 'Morrison',
            state: 'CO',
            comments: {
                1: {
                    title: 'Exquiste evening',
                    body: 'Laylow let the fetus rock...'
                }
            },
            attends: ['userId', 'userId', 'userId', 'userId', 'userId', 'userId', 'userId', 'userId'... ]
        }
    }
    albums: {
        albumTitle: {
            songs: [song1, song2, song3, ...]
        }
    }
}


### QUESTION
*Do I need a slice of state for a users index?*