import React from "react";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { story: null };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.storyId).then(() => {
      this.setState({ story: this.props.story });
    });
  }

  handleSubmit(e) {
    e.preventDefault();

    this.state.story;
  }

  render() {
    const months = {
      0: "Jan",
      1: "Feb",
      2: "Mar",
      3: "Apr",
      4: "May",
      5: "Jun",
      6: "Jul",
      7: "Aug",
      8: "Sep",
      9: "Oct",
      10: "Nov",
      11: "Dec",
    };

    if (!this.state.story) {
      return null;
    }

    const date = new Date(this.state.story.createdAt);
    const month = months[date.getMonth()];
    const day = date.getDate();
    const imageUrl = this.props.story.imageUrl ? (
      <img
        src={this.props.story.imageUrl}
        alt="Story Image"
        className="story-show-img"
      />
    ) : null;
    const responses = this.props.responses;

    return (
      <>
        <div className="story-show-details-top-container">
          <div className="story-show-details-top">
            <h1 className="story-show-title">{this.state.story.title}</h1>
            <div className="story-show-author-details-container">
              <div className="story-show-user-icon">
                <img src={window.UserIcon} alt="User Icon" />
              </div>
              <div className="story-show-author-name">
                {this.props.currentUser.name}
              </div>
              <div className="story-show-month">{month}</div>
              <div className="story-show-day">{day}</div>
            </div>
            {imageUrl}
            <div className="story-show-body">{this.state.story.body}</div>
          </div>
        </div>
        <div className="story-show-details-bottom-container">
          <div className="responses-container">
            {responses.length > 0 ? (
              responses.map((response) => {
                const responseAuthor = this.props.users[response.authorId];
                return (
                  <>
                    <div className="story-show-response">{response.body}</div>
                    <div className="response-author">{responseAuthor.name}</div>
                  </>
                );
              })
            ) : (
              <form className="response-form" onSubmit={this.handleSubmit}>
                <div className="response-body"></div>
              </form>
            )}
          </div>
        </div>
      </>
    );
  }
}

export default StoryShow;
