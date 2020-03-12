import { connect } from "react-redux";
import { fetchUser } from "../../actions/user_actions";
import UserFeed from "./user_feed";

const mapStateToProps = ({session, entities: { users }}, ownProps) => {
  return {
    user: users[ownProps.match.params.userId] || { username: "" },
    currentUserId: session.id,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchUser: id => dispatch(fetchUser(id)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UserFeed);