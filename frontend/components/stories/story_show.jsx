import React from "react";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { story: null, body: "" };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.storyId).then(() => {
      this.setState({ story: this.props.story });
    });
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();

    let data = {
      body: this.state.body,
      story_id: this.props.storyId,
    };

    this.props.createResponse(data).then(() => this.setState({ body: "" }));
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
    let responses = [];

    if (this.props.responses) responses = this.props.responses;

    return (
      <>
        <div className="story-show-details-top-container">
          <div className="story-show-details-top">
            <h1 className="story-show-title">{this.state.story.title}</h1>
            <div className="story-show-author-details-container">
              <div className="show-author-details-container">
                <div className="story-show-user-icon-container">
                  <img
                    src={window.UserIcon}
                    alt="User Icon"
                    className="story-show-user-icon"
                  />
                </div>
                <div className="show-user-info">
                  <div className="story-show-author-name">
                    {this.props.story.storyAuthor}
                  </div>
                  <div className="show-user-date">
                    <div className="story-show-month">{month}</div>
                    <div className="story-show-day">{day}</div>
                  </div>
                </div>
              </div>
            </div>
            {imageUrl}
            <div className="story-show-body">{this.state.story.body}</div>
          </div>
        </div>
        <div className="show-details-bottom-container">
          <div className="story-show-details-bottom">
            <div className="responses-container">
              <h1 className="responses-title">Responses</h1>
              <ul className="responses-ul">
                {responses.map((response) => {
                  return (
                    <li className="responses-li" key={response.id}>
                      <div className="response-container">
                        <div className="story-show-user-icon-container">
                          <img
                            src={window.UserIcon}
                            alt="User Icon"
                            className="story-show-user-icon"
                          />
                        </div>
                        <div className="response-details-container">
                          <div className="response-author">
                            {response.responseAuthor}
                            {response.authorId === this.props.currentUser.id ? (
                              <button
                                className="delete-response"
                                onClick={() =>
                                  this.props.deleteResponse(response.id)
                                }
                              >
                                <i className="fas fa-times"></i>
                              </button>
                            ) : null}
                          </div>
                          <div className="show-response-date">
                            <div className="story-response-month">{month}</div>
                            <div className="story-response-day">{day}</div>
                          </div>
                        </div>
                      </div>
                      <div className="story-show-response">{response.body}</div>
                    </li>
                  );
                })}
              </ul>

              <form className="response-form" onSubmit={this.handleSubmit}>
                <div className="response-body">
                  <input
                    type="text"
                    className="response-body-input"
                    placeholder="Write a response..."
                    value={this.state.body}
                    onChange={this.update("body")}
                  />
                </div>
                <button className="response-button" onClick={this.handleSubmit}>
                  Publish
                </button>
              </form>
            </div>
          </div>
        </div>
      </>
    );
  }
}

export default StoryShow;
