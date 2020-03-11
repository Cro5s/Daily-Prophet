import { combineReducers } from "redux";
import { usersReducer } from "./users_reducer";
import storiesReducer from "./stories_reducer";

export default combineReducers({
  users: usersReducer,
  stories: storiesReducer,
});