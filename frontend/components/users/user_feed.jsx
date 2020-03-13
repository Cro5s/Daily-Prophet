import React from "react";

class UserFeed extends React.Component {
  constructor(props) {
    super(props);

  }

  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    const { stories } = this.props;
    // const date = new Date(story.createdAt);
    // const month = months[date.getMonth()];
    // const day = date.getDate();
    // const imageUrl = story.imageUrl ? story.imageUrl : null;

    return (
      <div className="h1-container">
        <h1 
          className="story-h1"
        >
          Site has too many visitors feed failed to load.
        </h1>

      </div>
    //  <div className="feed-page-container">
    //    <div className="story-container">
    //       {
    //         stories.map(story => {
    //           return (
    //             <div>
    //               <div className="story-title-container">
    //                 <h1 className="story-title">{story.title}</h1>
    //               </div>
    //               <div className="story-body-container">
    //                 <p className="story-body">{story.body}</p>
    //               </div>
    //               <div classname="story-details-container">
    //                 <div className="story-author">{story.author.name}</div>
    //               </div>
    //               <div className="story-date-container">
    //               </div>
    //               <div classname="story-image-container">
    //                 <div className="story-image">{story.imageUrl}</div>
    //               </div>
    //             </div>
    //           );
    //         })
    //       }
    //    </div>
    //  </div>
    );
  }
}

export default UserFeed;