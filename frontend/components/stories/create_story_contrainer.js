import { connect } from "react-redux";
import { createStory,  clearStoryErrors } from "../../actions/story_actions";
import StoryForm from "./story_form";

const mapStateToProps = state => {
  return {
    story: { title: "", body: "", image: "", imageFile: null},
    formType: "Write a story",
    errors: state.errors.story,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    action: story => dispatch(createStory(story)),
    clearErrors: () => dispatch(clearStoryErrors()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(StoryForm);