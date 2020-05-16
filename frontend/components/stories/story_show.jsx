import React from "react";
import { fetchStory } from "../../actions/story_actions";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.story = this.props.story;
  }

  render() {
    return (
      <>
        <div className="story-show-details-top-container">
          <div className="story-show-details-top">
            <h1 className="story-show-title">{this.story.title}</h1>
            <div className="story-show-author-details-container">
              <div className="story-show-user-icon">{window.UserIcon}</div>
            </div>
          </div>
        </div>
      </>
    );
  }
}

export default StoryShow;
