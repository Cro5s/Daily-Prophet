import { connect } from "react-redux";
import Login from "./login";
import { login } from "../../actions/session_actions";

export default connect(mapStateToProps, mapDispatchToProps)(Login);