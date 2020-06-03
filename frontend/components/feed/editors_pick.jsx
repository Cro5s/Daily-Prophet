import React from "react";
import { Link } from "react-router-dom";

class EditorsPick extends React.Component {
  constructor(props) {
    super(props);
    this.shuffle = this.shuffle.bind(this);
  }

  shuffle(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }

    return arr;
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
    const { stories, users } = this.props;
    // const shuffledStories = this.shuffle(stories);
    const shuffledStories = stories.map((story) => {
      return story;
    });
    console.log("shuffledStories:", shuffledStories);
    const topFive = [];

    for (let i = 0; topFive.length <= 5; i++) {
      topFive.push(shuffledStories[i]);
    }

    return (
      <div className="feed-page-container">
        <div className="story-container">
          {topFive.map((story) => {
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
              <ul className="story-list-container" key={story.id}>
                <li className="story">
                  <Link to={`/stories/${story.id}`}>
                    <div className="story-title-container">
                      <h1 className="story-title">{story.title}</h1>
                      <div className="story-body-container">
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
                  </Link>
                  <div className="story-image-container">
                    <img className="story-image" src={imageUrl} />
                  </div>
                </li>
              </ul>
            );
          })}
        </div>
      </div>
    );
  }
}

export default EditorsPick;
