 import React from 'react'

 class CommentDetail extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      title: '',
      body: '',
      setlist_id: '',
      user_id: ''
    }
    this.handleSubmit = this.handleSubmit.bind(this)
    this.handleClick = this.handleClick.bind(this)
  }


  handleClick(comment){
    return e => this.props.deleteComment(comment)
  }

  handleSubmit(comment) {
    console.log(comment)
    return e => (
    let updated = Object.assign({}, this.state, comment)
    console.log(updated)
    this.props.updateComment({
      title: this.state.title,
      body: this.state.body,
      user_id: this.props.currentUser.id,
      setlist_id: this.props.setlistDetail.id
    }).then(
      () => this.setState({
        title: "",
        body: ""
      })
      )
    )
  }

  update(property) {
    return e => this.setState({ [property]: e.target.value })
  }


  render() {

    const { comment, deleteComment, updateComment, currentUser } = this.props
    return(
      <div>
        <div>
        <p>{currentUser.username}</p>
        <p>{comment.title}</p>
        <p>{comment.body}</p>
        <p>{comment.id}</p>
        </div>
        <div>
          <form onSubmit={this.handleSubmit(comment)}>
            <textarea 
              value={this.state.body}
              placeholder="Comment"
              onChange={this.update('body')}
            />
            <button>Update Comment</button>
          </form>
          <button value={comment.id} onClick={this.handleClick(comment)}>
            Delete Comment
          </button>
        </div>
      </div>  
    )
  }
 }   

 export default CommentDetail
    
  