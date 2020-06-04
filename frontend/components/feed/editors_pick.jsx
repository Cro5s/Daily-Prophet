import React from "react";
import { Link } from "react-router-dom";

class EditorsPick extends React.Component {
  constructor(props) {
    super(props);
    this.shuffle = this.shuffle.bind(this);
    this.ellipse = this.ellipse.bind(this);
    this.month = this.month.bind(this);
    this.day = this.day.bind(this);
    this.image = this.image.bind(this);
  }

  shuffle(arr) {
    let newArr = [];

    while (newArr.length < 5) {
      const i = Math.floor(Math.random() * arr.length);

      if (!newArr.includes(arr[i])) newArr.push(arr[i]);
    }

    return newArr;
  }

  ellipse(story) {
    let words = story.body.split(" ");
    let shortenedBody = [];
    let i = 0;

    while (shortenedBody.length <= 7) {
      shortenedBody.push(words[i]);
      i++;
    }

    return shortenedBody.join(" ") + "...";
  }

  day(story) {
    let date = new Date(story.createdAt);
    return date.getDate();
  }

  month(months, story) {
    let date = new Date(story.createdAt);
    return months[date.getMonth()];
  }

  image(story) {
    return story.imageUrl ? story.imageUrl : null;
  }

  render() {
    const { stories, months } = this.props;
    const topFive = this.shuffle(stories);
    const first = topFive[0];
    const middle = [];
    const last = topFive[4];

    for (let i = 1; i < 4; i++) {
      middle.push(topFive[i]);
    }

    return (
      <div className="editors-container">
        <div className="editors-story-container">
          <ul className="story-list-container">
            <li className="story" key={first.id}>
              <Link to={`/stories/${first.id}`}>
                <div className="story-title-container">
                  <h1 className="story-title">{first.title}</h1>
                  <div className="story-body-container">
                    <p className="story-body">{this.ellipse(first)}</p>
                  </div>
                  <div className="story-details-container">
                    <div className="story-author">{first.storyAuthor}</div>
                    <div className="story-date-container">
                      <div className="story-date">
                        {this.month(months, first)} {this.day(first)}
                      </div>
                    </div>
                  </div>
                </div>
              </Link>
              <div className="story-image-container">
                <img className="story-image" src={this.image(first)} />
              </div>
            </li>
            {middle.map((story) => {
              return (
                <li className="story" key={story.id}>
                  <Link to={`/stories/${story.id}`}>
                    <div className="story-title-container">
                      <h1 className="story-title">{story.title}</h1>
                      <div className="story-body-container">
                        <p className="story-body">{this.ellipse(story)}</p>
                      </div>
                      <div className="story-details-container">
                        <div className="story-author">{story.storyAuthor}</div>
                        <div className="story-date-container">
                          <div className="story-date">
                            {this.month(months, story)} {this.day(story)}
                          </div>
                        </div>
                      </div>
                    </div>
                  </Link>
                  <div className="story-image-container">
                    <img className="story-image" src={this.image(story)} />
                  </div>
                </li>
              );
            })}
            <li className="story" key={last.id}>
              <Link to={`/stories/${last.id}`}>
                <div className="story-title-container">
                  <h1 className="story-title">{last.title}</h1>
                  <div className="story-body-container">
                    <p className="story-body">{this.ellipse(last)}</p>
                  </div>
                  <div className="story-details-container">
                    <div className="story-author">{last.storyAuthor}</div>
                    <div className="story-date-container">
                      <div className="story-date">
                        {this.month(months, last)} {this.day(last)}
                      </div>
                    </div>
                  </div>
                </div>
              </Link>
              <div className="story-image-container">
                <img className="story-image" src={this.image(last)} />
              </div>
            </li>
          </ul>
        </div>
        <p className="editors-title">Daily's Picks</p>
        <div className="divider-top" />
      </div>
    );
  }
}

export default EditorsPick;
