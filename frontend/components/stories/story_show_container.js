import { connect } from "react-redux";
import StoryShow from "./story_show";
import { fetchStory } from "../../actions/story_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    currentUser: state.entities.users[state.session.id],
    storyId: ownProps.match.params.storyId,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchStory: (storyId) => dispatch(fetchStory(storyId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);
