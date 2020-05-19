import * as StoryApiUtil from "../utils/story_api.util";

export const RECEIVE_STORIES = "RECEIVE_STORIES";
export const RECEIVE_STORY = "RECEIVE_STORY";
export const REMOVE_STORY = "REMOVE_STORY";
export const RECEIVE_STORY_ERRORS = "RECEIVE_STORY_ERRORS";
export const CLEAR_STORY_ERRORS = "CLEAR_STORY_ERRORS";

export function receiveStories(payload) {
  return {
    type: RECEIVE_STORIES,
    stories: payload.stories,
    users: payload.users,
  };
}

export function receiveStory(payload) {
  return {
    type: RECEIVE_STORY,
    story: payload.story,
    user: payload.author,
    responses: payload.responses,
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

export const fetchStories = () => (dispatch) => {
  return StoryApiUtil.fetchStories().then(
    (response) => dispatch(receiveStories(response)),
    (error) => dispatch(receiveStoryErrors(error.responseJSON))
  );
};

export const fetchStory = (storyId) => (dispatch) => {
  return StoryApiUtil.fetchStory(storyId).then(
    (response) => dispatch(receiveStory(response)),
    (error) => dispatch(receiveStoryErrors(error.responseJSON))
  );
};

export const createStory = (formData) => (dispatch) => {
  return StoryApiUtil.createStory(formData).then(
    (response) => dispatch(receiveStory(response)),
    (error) => dispatch(receiveStoryErrors(error.responseJSON))
  );
};

export const updateStory = (formData) => (dispatch) => {
  return StoryApiUtil.updateStory(formData).then(
    (response) => dispatch(receiveStory(response)),
    (error) => dispatch(receiveStoryErrors(error.responseJSON))
  );
};

export const deleteStory = (storyId) => (dispatch) => {
  return StoryApiUtil.deleteStory(storyId).then(
    () => dispatch(removeStory(storyId)),
    (error) => dispatch(receiveStoryErrors(error.responseJSON))
  );
};
