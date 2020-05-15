// import React from "react";
// import { connect } from "react-redux";
// import { Link } from "react-router-dom";
// import { closeDropDown, openDropDown } from "../../actions/drop_down_actions";
// import { deleteStory } from "../../actions/story_actions";

// function StoryDropDown({ dropDown, closeDropDown, deleteStory, storyId }) {
//   if (!dropDown) {
//     return null;
//   }

//   return (
//     <>
//       <div className="transparent-modal" onClick={closeDropDown} />
//       <div className="dd-background">
//         <div className="dd-child" onClick={(e) => e.stopPropagation()}>
//           <div onClick={closeDropDown} className="popover-arrow"></div>
//           <div className="dd-wrapper">
//             <ul className="dd-list">
//               <Link
//                 to={`/story/storyId here!!/edit`}
//                 className="edit-story-link"
//               >
//                 Edit story
//               </Link>
//               <button
//                 className="delete-story-btn"
//                 onClick={() => deleteStory("storyId here!!")}
//               >
//                 Delete story
//               </button>
//             </ul>
//           </div>
//         </div>
//       </div>
//     </>
//   );
// }

// const mapStateToProps = (state, ownProps) => {
//   return {
//     dropDown: state.ui.dropDown,
//     storyId: state.entities.users.storyIds,
//   };
// };

// const mapDispatchToProps = (dispatch) => {
//   return {
//     closeDropDown: () => dispatch(closeDropDown()),
//     openDropDown: (dropDown) => dispatch(openDropDown(dropDown)),
//     deleteStory: (storyId) => dispatch(deleteStory(storyId)),
//   };
// };

// export default connect(mapStateToProps, mapDispatchToProps)(StoryDropDown);
