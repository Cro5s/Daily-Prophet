import { OPEN_DROP_DOWN, CLOSE_DROP_DOWN } from "../actions/drop_down_actions";

export default (state = false, action) => {
  Object.freeze(state);

  switch (action.type) {
    case OPEN_DROP_DOWN:
      return action.dropDown;
    case CLOSE_DROP_DOWN:
      return false;
    default:
      return state;
  };
};