import React from "react";
import { connect } from "react-redux";
import StoryForm from "./story_form";
import {
  fetchStory,
  updateStory,
  deleteStory 
} from "../../actions/story_actions";


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
    const { story, formType, currentUser, errors, action, fetchStory, deleteStory, history } = this.props;

    return (
      <StoryForm 
        story={story}
        formType={formType}
        currentUser={currentUser}
        errors={errors}
        action={action}
        fetchStory={fetchStory}
        deleteStory={deleteStory}
        history={history}
      />
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    formType: "Edit Story",
    currentUser: state.entities.users[state.session.id],
    errors: state.errors.story,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    action: story => dispatch(updateStory(story)),
    fetchStory: storyId => dispatch(fetchStory(storyId)),
    deleteStory: storyId => dispatch(deleteStory(storyId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(EditStoryForm);