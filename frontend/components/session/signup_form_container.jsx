import React from "react";
import { connect } from "react-redux";
import { 
  signup, 
  login, 
  clearSessionErrors 
} from "../../actions/session_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import  SessionForm from "./session_form";

const mapStateToProps = state => {
  return {
    formType: "Sign Up",
    errors: state.errors.session,
    header: <h2 className="session-header">Join Daily Prophet</h2>,
    footer: <p className="session-footer">Already have an account?</p>,
  };
}

const mapDispatchToProps = dispatch => {
  return {
    login: user => dispatch(login(user)),
    processForm: user => dispatch(signup(user)), 
    otherForm: (
      <button
        className="other-form-button"
        onClick={() => dispatch(openModal("Log In"))}
      >Sign in</button>
    ),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearSessionErrors()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);