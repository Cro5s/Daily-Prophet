import { connect } from "react-redux";
import { fetchUser } from "../../actions/user_actions";
import { fetchStories } from "../../actions/story_actions";
import Feed from "./feed";

const mapStateToProps = (state) => {
  return {
    stories: Object.values(state.entities.stories),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchUser: (id) => dispatch(fetchUser(id)),
    fetchStories: () => dispatch(fetchStories()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Feed);
