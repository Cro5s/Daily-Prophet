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
    const nums = { 0: "01", 1: "02", 2: "03", 3: "04" };

    return (
      <div className="popular-stories">
        <p className="popular-title">Popular on Daily Prophet</p>
        <div className="divider-right" />
        <div className="popular-container">
          <div className="popular-story-container">
            <ul className="story-list-container">
              {popularStories.map((story, idx) => {
                let name = story.storyAuthor;
                let date = new Date(story.createdAt);
                let month = months[date.getMonth()];
                let day = date.getDate();

                return (
                  <div className="popular-story-container" key={story.id}>
                    <div className="popular-story-num">{nums[idx]}</div>
                    <li className="popular-story">
                      <Link to={`/stories/${story.id}`}>
                        <div className="popular-story-title-container">
                          <h1 className="popular-story-title">{story.title}</h1>
                          <div className="popular-story-details-container">
                            <div className="popular-story-author">{name}</div>
                            <div className="popular-story-date-container">
                              <div className="popular-story-date">
                                {month} {day}
                              </div>
                            </div>
                          </div>
                        </div>
                      </Link>
                    </li>
                  </div>
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
