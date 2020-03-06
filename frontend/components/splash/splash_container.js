import { connect } from "react-redux";
import { openModal } from "../../actions/modal_actions";
import { SplashPage } from "./nav_bar";

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id],
  };
};

const mapDispatchToProps = dispatch => {
  return {
    openModal: modal => dispatch(openModal(modal)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SplashPage);