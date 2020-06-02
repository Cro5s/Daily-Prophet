import { connect } from "react-redux";
import StoryShow from "./story_show";
import { fetchStory } from "../../actions/story_actions";
import {
  createResponse,
  deleteResponse,
  clearResponseErrors,
} from "../../actions/response_action";

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    responses: Object.values(state.entities.responses),
    currentUser: state.entities.users[state.session.id],
    storyId: ownProps.match.params.storyId,
    users: state.entities.users,
    errors: state.errors.response,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchStory: (storyId) => dispatch(fetchStory(storyId)),
    createResponse: (response) => dispatch(createResponse(response)),
    deleteResponse: (responseId) => dispatch(deleteResponse(responseId)),
    clearErrors: () => dispatch(clearResponseErrors()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);
