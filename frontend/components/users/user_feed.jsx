import React from "react";

class UserFeed extends React.Component {
  constructor(props) {
    super(props);
    // this.users = this.props.users;
  }

  componentDidMount() {
    this.props.fetchStories();
    
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
      11: "Dec"
    }
    const { stories, users } = this.props;
    
    // console.log(this.props.users)
    // debugger
    return (
     <div className="feed-page-container">
       <div className="story-container">
          {
            stories.map(story => {
              let authorId = story.authorId
              // let name = this.users[authorId].name;
              let date = new Date(story.createdAt);
              let month = months[date.getMonth()];
              let day = date.getDate();
              let imageUrl = story.imageUrl ? story.imageUrl : null;

              return (
                <ul className="story-list-container" key={story.id}>
                  <li className="story">
                    <div className="story-title-container">
                      <h1 className="story-title">{story.title}</h1>
                      <div className="story-body-container">
                        <p className="story-body">{story.body}</p>
                      </div>
                      <div className="story-details-container">
                        <div className="story-author">{name}</div>
                        <div className="story-date-container">
                          <div className="story-date">{month} {day}</div>
                        </div>
                      </div>
                    </div>
                    <div className="story-image-container">
                      <img className="story-image" src={story.imageUrl} />
                    </div>
                  </li>  
                </ul>
              );
            })
          }
        </div>
      </div>

      // <div className="h1-container">
      //   <h1
      //     className="story-h1"
      //   >
      //     Site has too many visitors feed failed to load.
      //   </h1>

      // </div>
    );
  }
}

export default UserFeed;