import React from "react";
import { Link } from "react-router-dom";
import StoryIndexItem from "./story_index_item";

class UserStoryIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    let { stories, currentUserId, updateStory, deleteStory } = this.props;

    stories = stories.filter((story) => {
      return story.authorId === currentUserId;
    });

    return (
      <>
        <div className="stories-page-container">
          <div className="stories-header-container">
            <div className="h1-container">
              <h1 className="h1-content">Your stories</h1>
            </div>
            <div className="stories-btns-container">
              <div className="right-btn-container">
                <Link to="/stories/new" className="create-story">
                  Write a story
                </Link>
              </div>
            </div>
          </div>

          <ul className="stories-list-container">
            <div className="story-details-container">
              {stories.length < 1 ? (
                <div className="divider">
                  <h3 className="no-stories-msg">
                    You haven't published any stories yet.
                  </h3>
                </div>
              ) : (
                stories.map((story) => {
                  return (
                    <StoryIndexItem
                      key={story.id}
                      story={story}
                      updateStory={updateStory}
                      deleteStory={deleteStory}
                    />
                  );
                })
              )}
            </div>
          </ul>
        </div>
      </>
    );
  }
}

export default UserStoryIndex;
