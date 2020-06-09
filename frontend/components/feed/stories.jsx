import React from "react";
import { Link } from "react-router-dom";

class Stories extends React.Component {
  constructor(props) {
    super(props);
    this.state = { stories: [] };
    this.shuffle = this.shuffle.bind(this);
  }

  componentDidMount() {
    this.setState({ stories: this.shuffle(this.props.stories) });
  }

  shuffle(arr) {
    let newArr = [];

    while (newArr.length < arr.length) {
      const i = Math.floor(Math.random() * arr.length);

      if (!newArr.includes(arr[i])) newArr.push(arr[i]);
    }

    return newArr;
  }

  render() {
    const { months } = this.props;
    const shuffledStories = this.state.stories;

    return (
      <div className="stories-feed-container">
        <div className="stories-story-container">
          <ul className="story-list-container">
            {shuffledStories.map((story) => {
              let name = story.storyAuthor;
              let date = new Date(story.createdAt);
              let month = months[date.getMonth()];
              let day = date.getDate();
              let imageUrl = story.imageUrl ? story.imageUrl : null;
              let words = story.body.split(" ");
              let shortenedBody = [];
              let i = 0;

              while (shortenedBody.length <= 7) {
                shortenedBody.push(words[i]);
                i++;
              }

              const ellipseBody = shortenedBody.join(" ") + "...";

              return (
                <li className="story" key={story.id}>
                  <Link to={`/stories/${story.id}`}>
                    <div className="stories-container">
                      <div className="story-title-container">
                        <h1 className="stories-story-title">{story.title}</h1>
                        <div className="stories-body-container">
                          <p className="story-body">{ellipseBody}</p>
                        </div>
                        <div className="story-details-container">
                          <div className="story-author">{name}</div>
                          <div className="story-date-container">
                            <div className="story-date">
                              {month} {day}
                            </div>
                          </div>
                        </div>
                      </div>
                      <div className="stories-image-container">
                        <img className="stories-image" src={imageUrl} />
                      </div>
                    </div>
                  </Link>
                </li>
              );
            })}
          </ul>
        </div>
      </div>
    );
  }
}

export default Stories;
