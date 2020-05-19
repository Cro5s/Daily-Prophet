import { combineReducers } from "redux";
import { usersReducer } from "./users_reducer";
import responses from "./responses_reducer";
import stories from "./stories_reducer";

export default combineReducers({
  users: usersReducer,
  stories,
  responses,
});
