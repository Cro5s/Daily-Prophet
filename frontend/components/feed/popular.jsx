import React from "react";
import { Link } from "react-router-dom";

class Popular extends React.Component {
  constructor(props) {
    super(props);
    this.shuffle = this.shuffle.bind(this);
  }

  shuffle(arr) {
    let newArr = [];

    while (newArr.length < 4) {
      const i = Math.floor(Math.random() * arr.length);

      if (!newArr.includes(arr[i])) newArr.push(arr[i]);
    }

    return newArr;
  }

  render() {
    const { stories, months } = this.props;
    const popularStories = this.shuffle(stories);

    return (
      <div className="popular-stories">
        <p className="popular-title">Popular on Daily Prophet</p>
        <div className="divider-right" />
        <div className="popular-container">
          <div className="popular-story-container">
            <ul className="story-list-container">
              {popularStories.map((story) => {
                let name = story.storyAuthor;
                let date = new Date(story.createdAt);
                let month = months[date.getMonth()];
                let day = date.getDate();
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
                  </li>
                );
              })}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default Popular;
