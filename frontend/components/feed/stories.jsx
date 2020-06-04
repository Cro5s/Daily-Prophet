import React from "react";
import { Link } from "react-router-dom";

class Stories extends React.Component {
  constructor(props) {
    super(props);
  }

  // componentDidMount() {
  //   this.props.fetchStories();
  // }

  // render() {
  //   const months = {
  //     0: "Jan",
  //     1: "Feb",
  //     2: "Mar",
  //     3: "Apr",
  //     4: "May",
  //     5: "Jun",
  //     6: "Jul",
  //     7: "Aug",
  //     8: "Sep",
  //     9: "Oct",
  //     10: "Nov",
  //     11: "Dec",
  //   };
  //   const { stories, users } = this.props;

  //   return (
  //     <div className="feed-page-container">
  //       <div className="story-container">
  //         {stories.map((story) => {
  //           // console.log("AuthorId:", story.authorId);
  //           // console.log("Users[authorId]:", users[authorId]);
  //           // let authorId = story.authorId;
  //           // let name = users[authorId].name;
  //           let date = new Date(story.createdAt);
  //           let month = months[date.getMonth()];
  //           let day = date.getDate();
  //           let imageUrl = story.imageUrl ? story.imageUrl : null;
  //           let words = story.body.split(" ");
  //           let shortenedBody = [];
  //           let i = 0;

  //           while (shortenedBody.length <= 7) {
  //             shortenedBody.push(words[i]);
  //             i++;
  //           }

  //           const ellipseBody = shortenedBody.join(" ") + "...";

  //           return (
  //             <ul className="story-list-container" key={story.id}>
  //               <li className="story">
  //                 <Link to={`/stories/${story.id}`}>
  //                   <div className="story-title-container">
  //                     <h1 className="story-title">{story.title}</h1>
  //                     <div className="story-body-container">
  //                       <p className="story-body">{ellipseBody}</p>
  //                     </div>
  //                     <div className="story-details-container">
  //                       <div className="story-author">{name}</div>
  //                       <div className="story-date-container">
  //                         <div className="story-date">
  //                           {month} {day}
  //                         </div>
  //                       </div>
  //                     </div>
  //                   </div>
  //                 </Link>
  //                 <div className="story-image-container">
  //                   <img className="story-image" src={imageUrl} />
  //                 </div>
  //               </li>
  //             </ul>
  //           );
  //         })}
  //       </div>
  //     </div>
  //   );
  // }
}

export default Stories;
