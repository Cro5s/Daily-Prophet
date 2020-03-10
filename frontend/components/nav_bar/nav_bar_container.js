import { connect } from "react-redux";
import { logout } from "../../actions/session_actions";
import { openModal } from "../../actions/modal_actions";
import NavBar from "./nav_bar";
import { openDropDown, closeDropDown } from "../../actions/drop_down_actions";


const mapStateToProps = state => {
  return {
    currentUser: state.entities.users[state.session.id],
    dropDown: state.ui.dropDown,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    logout: () => dispatch(logout()),
    openModal: modal => dispatch(openModal(modal)),
    openDropDown: dropDown => dispatch(openDropDown(dropDown)),
    closeDropDown: () => dispatch(closeDropDown()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);