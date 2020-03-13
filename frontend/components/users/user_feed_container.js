import { connect } from "react-redux";
import { fetchUser } from "../../actions/user_actions";
import { fetchStories } from "../../actions/story_actions";
import UserFeed from "./user_feed";

const mapStateToProps = state => {
  return {
    users: Object.values(state.entities.users),
    stories: state.entities.stories,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchUser: id => dispatch(fetchUser(id)),
    fetchStories: () => dispatch(fetchStories()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UserFeed);