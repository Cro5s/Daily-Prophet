import React from "react";
import { connect } from "react-redux";
import { signup, login } from "../../actions/session_actions";
import  SessionForm from "./session_form";

const mapStateToProps = state => {
  return {
    formType: "Sign Up",
    header: <h2> className="session-header"> Join Daily Prophet</h2>,
    footer: <p>Already have an account?</p>,
  };
}

const mapDispatchToProps = dispatch => {
  return {
    signup: formUser => dispatch(signup(formUser)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);