import { connect } from "react-redux";
import { fetchStories } from "../../actions/story_actions";
import { openDropDown, closeDropDown } from "../../actions/drop_down_actions";
import UserStoryIndex from "./user_story_index";
import { deleteStory } from "../../actions/story_actions";

const mapStateToProps = state => {
  return {
    stories: Object.values(state.entities.stories),
    dropDown: state.ui.dropDown,
    currentUserId: state.session.id,
  
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchStories: () => dispatch(fetchStories()),
    openDropDown: dropDown => dispatch(openDropDown(dropDown)),
    closeDropDown: () => dispatch(closeDropDown()),
    deleteStory: storyId => dispatch(deleteStory(storyId)),
     
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UserStoryIndex);
