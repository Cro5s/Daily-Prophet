import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { RECEIVE_USER } from "../actions/user_actions";

export function usersReducer(state = {}, action) {
  Object.freeze(state);
  let newState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign(
        {}, state, { [action.user.id]: action.user }
      );
    case RECEIVE_USER:
      newState[action.user.id] = action.user;
      return newState; 
    default:
      return state;
  };
}