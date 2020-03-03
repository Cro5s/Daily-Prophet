import { combineReducers } from "redux";
import sessionReducers from "./session_reducer";

export default combineReducers({
  session: sessionReducers,
});