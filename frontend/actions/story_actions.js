import * as StoryApiUtil from "../utils/story_api.util";

export const RECEIVE_STORIES = "RECEIVE_STORIES";
export const RECEIVE_STORY = "RECEIVE_STORY";
export const REMOVE_STORY = "REMOVE_STORY";
export const RECEIVE_STORY_ERRORS = "RECEIVE_STORY_ERRORS";
export const CLEAR_STORY_ERRORS = "CLEAR_STORY_ERRORS";

export function receiveStories(stories) {
  return {
    type: RECEIVE_STORIES,
    stories,
  };
}

export function receiveStory(story) {
  return {
    type: RECEIVE_STORY,
    story,
  };
}

export function removeStory(storyId) {
  return {
    type: REMOVE_STORY,
    storyId,
  };
}

export function receiveStoryErrors(errors) {
  return {
    type: RECEIVE_STORY_ERRORS,
    errors,
  };
}

export function clearStoryErrors() {
  return {
    type: CLEAR_STORY_ERRORS,
  };
}

export const fetchStories = () => dispatch => {
  return StoryApiUtil.fetchStories()
    .then(stories => dispatch(receiveStories(stories)), 
    error => (dispatch(receiveStoryErrors(error.responseJSON))));

};

export const fetchStory = storyId => dispatch => {
  return StoryApiUtil.fetchStory(storyId)
    .then(story => dispatch(receiveStory(story)), 
    error => (dispatch(receiveStoryErrors(error.responseJSON))));
};

export const createStory = story => dispatch => {
  return StoryApiUtil.createStory(story)
    .then(createdStory => dispatch(receiveStory(createdStory)),
    error => (dispatch(receiveStoryErrors(error.responseJSON))));
};

export const updateStory = story => dispatch => {
  return StoryApiUtil.updateStory(story)
    .then(updatedStory => dispatch(receiveStory(updatedStory)),
    error => (dispatch(receiveStoryErrors(error.responseJSON))));
};

export const deleteStory = storyId => dispatch => {
  return StoryApiUtil.deleteStory(storyId)
    .then( () => dispatch(removeStory(storyId)),
    error => (dispatch(receiveStoryErrors(error.responseJSON))));
};