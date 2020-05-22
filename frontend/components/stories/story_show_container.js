import { connect } from "react-redux";
import StoryShow from "./story_show";
import { fetchStory } from "../../actions/story_actions";
import { createStory } from "../../actions/response_action";

const mapStateToProps = (state, ownProps) => {
  // debugger;
  // let story = state.entities.stories[ownProps.match.params.storyId];

  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    responses: state.entities.responses,
    currentUser: state.entities.users[state.session.id],
    storyId: ownProps.match.params.storyId,
    users: state.entities.users,
    errors: state.errors.response,
    // responseAuthor: state.entities.users[story.authorId],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchStory: (storyId) => dispatch(fetchStory(storyId)),
    createResponse: (response) => dispatch(createResponse(response)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);
