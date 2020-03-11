// import React from "react";
// import { Link } from "react-router-dom";
// import StoryDropDown from "../dropdown/story_drop_down";

// class StoryShow extends React.Component {
//   constructor(props) {
//     super(props)
//   }

//   render() {
//     const { stories } = this.props.stories;

//     return (
//       <>
//         <div className="stories-container">
//           <div className="h1-container">
//             <h1 className="h1-content">Your stories</h1>
//           </div>
//           <div className="stories-btns-container">
//             <div className="right-btn-container">
//               <Link 
//                 to="/stories/new"
//                 className="create-story-link"
//               >
//                 Write a story
//               </Link>
//             </div>
//           </div>        
//         </div>

//         <ul className="stories-list-container">
//           <div className="story-details">
//             {
//               stories.map(story => {
//                 return (
//                   <>
//                     <h3 className="story-title">{story.title}</h3>
//                     <div className="story-body">{story.body}</div>
//                     <div className="story-stats-container">
//                       <div className="dd-btn-container">
//                         <button 
//                           className="dd-btn"
//                           onClick={() => openDropDown(dropDown)}
//                         >
//                           v
//                         </button>
//                       </div>
//                       <div className="dd-menu"><StoryDropDown /></div>
//                     </div>
//                   </>
//                 );
//               })
//             }
//           </div>
//         </ul>
//       </>
//     );
//   }
// }

// export default StoryShow;