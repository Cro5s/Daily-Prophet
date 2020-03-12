import React from "react";
import { connect } from "react-redux";
import StoryForm from "./story_form";
import {
  fetchStory,
  updateStory,
  deleteStory, 
  clearStoryErrors
} from "../../actions/story_actions";
import { openDropDown, closeDropDown } from "../../actions/drop_down_actions";

class EditStoryForm extends React.Component {
  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
  }

  // componentDidUpdate(prevProps) {
  //   if (this.props.match.params.storyId !== prevProps.story.id) {
  //     this.props.fetchPost(this.props.match.params.postId);
  //   }; 
  // }

  render() {
    const { story, formType, currentUser, imageFile, errors, action, fetchStory, deleteStory, clearErrors, history } = this.props;

    return (
      <StoryForm 
        story={story}
        formType={formType}
        currentUser={currentUser}
        imageFile={imageFile}
        errors={errors}
        action={action}
        fetchStory={fetchStory}
        deleteStory={deleteStory}
        history={history}
        clearErrors={clearErrors}
      />
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    formType: "Edit story",
    currentUser: state.entities.users[state.session.id],
    imageFile: state.entities.stories[ownProps.match.params.storyId.image],
    errors: state.errors.story,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    action: story => dispatch(updateStory(story)),
    fetchStory: storyId => dispatch(fetchStory(storyId)),
    deleteStory: storyId => dispatch(deleteStory(storyId)),
    clearErrors: () => dispatch(clearStoryErrors()),
    
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(EditStoryForm);