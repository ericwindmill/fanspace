import React from 'react'

class CommentForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      title: '',
      body: '',
      setlist_id: '',
      user_id: ''
    }

  this.handleSubmit = this.handleSubmit.bind(this)
  }




  handleSubmit(e) {
    e.preventDefault();
    this.props.newComment({
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
  }

  update(property) {
    return e => this.setState({ [property]: e.target.value })
  }

  render() {
    return (
      <section className="">
        <h1>Leave a comment: </h1>
        <form className="comment-form" onSubmit={this.handleSubmit}>
          <textarea
            value={this.state.body}
            placeholder="Comment"
            onChange={this.update('body')}
            />
          <button>Add Comment</button>
        </form>
      </section>


    )
  }
}

export default CommentForm