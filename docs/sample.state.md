``` javascript
{
    currentUser: {
        id: 1,
        username: 'rod-stewart'
        image_url: 'rodstewartgreenhat.png',
        about: "My cat is also named Rod Stewart.",
        location: {
            city: 'London',
            state: 'England'
        },
        attends: [....attendsObjects]
    },
    userIndex: {
        users: [...userObjects]
    }.
    setListIndex: {
        setListID : [setlistObject, setlistObject, etc]
    },
    setList: {
        date : {
            id: 1,
            songs: [...song objects]
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
            attends: [...attendsObjetcs]
        }
    } 
}
```