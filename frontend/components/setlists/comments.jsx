import React from 'react'

class Comments extends React.Component {

  render() {
    return (
     <ul>
      {this.props.comments.map(comment =>
        <li key={comment.id}>
          <p>{comment.title}</p>
          <p>{comment.body}</p>
        </li>
      )}
     </ul>
    )
  }
}

export default Comments