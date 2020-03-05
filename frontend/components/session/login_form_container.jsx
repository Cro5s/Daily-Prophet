import React from "react";
import { connect } from "react-redux";
import { login, clearSessionErrors } from "../../actions/session_actions";
import SessionForm from "./session_form";
import { openModal, closeModal } from "../../actions/modal_actions";

const mapStateToProps = ({ errors }) => {
  return {
    formType: "Log In",
    errors: errors.session,
    header: <h2 className="session-header">Welcome back.</h2>,
    footer: <p className="session-footer">No account?</p>,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: user => dispatch(login(user)),
    otherForm: (
      <button
        className="other-form-button"
        onClick={() => dispatch(openModal("Sign Up"))}
      >Create one</button>
    ),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearSessionErrors()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);