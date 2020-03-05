import {
  RECEIVE_CURRENT_USER,
  RECEIVE_SESSION_ERRORS,
  CLEAR_SESSION_ERRORS,
} from "../actions/session_actions";
import { CLOSE_MODAL } from "../actions/modal_actions";

const _defaultState = [];

export default (state = _defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return _defaultState;
    case RECEIVE_SESSION_ERRORS:
      return action.errors;
    case CLEAR_SESSION_ERRORS:
      return _defaultState;
    case CLOSE_MODAL:
      return _defaultState;
    default:
      return state;
  };
};