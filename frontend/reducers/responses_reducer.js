import { REMOVE_RESPONSE } from "../actions/response_action";
import { RECEIVE_STORY } from "../actions/story_actions";

export default function (state = {}, action) {
  Object.freeze(state);
  let newState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STORY:
      return action.responses;
    case REMOVE_RESPONSE:
      delete newState[action.responseId];
      return newState;
    default:
      return state;
  }
}
