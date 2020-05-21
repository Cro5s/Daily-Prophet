import {
  RECEIVE_STORIES,
  RECEIVE_STORY,
  REMOVE_STORY,
} from "../actions/story_actions";

export default function (state = {}, action) {
  Object.freeze(state);
  let newState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STORIES:
      return action.stories;
    case RECEIVE_STORY:
      newState[action.story.id] = action.story;
      return newState;
    case REMOVE_STORY:
      delete newState[action.storyId];
      return newState;
    default:
      return state;
  }
}
