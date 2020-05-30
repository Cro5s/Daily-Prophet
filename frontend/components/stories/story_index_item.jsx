import React from "react";
import { Link } from "react-router-dom";

const DropDown = ({ story, deleteStory }) => {
  return (
    <div className="dd-menu">
      <Link to={`/story/${story.id}/edit`} className="edit-story-link">
        Edit story
      </Link>
      <button className="delete-btn" onClick={() => deleteStory(story.id)}>
        Delete story
      </button>
    </div>
  );
};

class StoryIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { dropDown: false };
    this.openDropDown = this.openDropDown.bind(this);
    this.closeDropDown = this.closeDropDown.bind(this);
  }

  openDropDown() {
    this.setState({ dropDown: true });
  }

  closeDropDown() {
    this.setState({ dropDown: false });
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
    const { story, deleteStory } = this.props;
    const date = new Date(story.createdAt);
    const month = months[date.getMonth()];
    const day = date.getDate();
    const imageUrl = story.imageUrl ? story.imageUrl : null;
    let words = story.body.split(" ");
    let shortenedBody = [];
    let i = 0;

    while (shortenedBody.length <= 7) {
      shortenedBody.push(words[i]);
      i++;
    }

    const ellipseBody = shortenedBody.join(" ") + "...";

    return (
      <>
        <div className="divider-2">
          <li className="story-details" key={story.id}>
            <Link to={`/stories/${story.id}`}>
              <div className="story-img-container">
                <img src={imageUrl} className="story-img" />
              </div>
              <h3 className="story-title">{story.title}</h3>
              <div className="story-body-container">
                <p className="story-body">{ellipseBody}</p>
              </div>
            </Link>
            <div className="story-stats-container">
              <h4 className="date-created">
                Published on {month} {day}
              </h4>
              {this.state.dropDown ? (
                <div
                  className="story-dd-background"
                  onClick={this.closeDropDown}
                />
              ) : null}
              <div className="dd-btn-container">
                <button className="dd-btn" onClick={this.openDropDown}>
                  <i className="fas fa-chevron-down"></i>
                </button>
                <div
                  className="dd-menu-container"
                  onClick={(e) => e.stopPropagation()}
                >
                  {this.state.dropDown && (
                    <DropDown story={story} deleteStory={deleteStory} />
                  )}
                </div>
              </div>
            </div>
          </li>
        </div>
      </>
    );
  }
}

export default StoryIndexItem;
