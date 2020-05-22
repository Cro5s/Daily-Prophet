import {
  RECEIVE_RESPONSE_ERRORS,
  CLEAR_RESPONSE_ERRORS,
} from "../actions/response_action";

const _defaultState = [];

export default (state = _defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_RESPONSE_ERRORS:
      if (action.errors) {
        return action.errors;
      } else {
        return _defaultState;
      }
    case CLEAR_RESPONSE_ERRORS:
      return _defaultState;
    default:
      return state;
  }
};
