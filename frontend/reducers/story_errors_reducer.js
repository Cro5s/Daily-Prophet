import {
  RECEIVE_STORY_ERRORS,
  CLEAR_STORY_ERRORS
} from "../actions/story_actions";

const _defaultState = [];

export default (state = _defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_STORY_ERRORS:
      if (action.errors) {
        return action.errors;
      } else {
        return _defaultState;
      }
    case CLEAR_STORY_ERRORS:
      return _defaultState;
    default:
      return state;
  }
};
