export function fetchStories() {
  return $.ajax({
    method: `GET`,
    url: `/api/stories`,
  });
}

export function fetchStory(storyId) {
  return $.ajax({
    method: `GET`,
    url: `/api/stories/${storyId}`,
  });
}

export function createStory(story) {
  return $.ajax({
    method: `POST`,
    url: `/api/stories`,
    data: story,
    contentType: false,
    processData: false,
  });
}

export function updateStory(story) {
  return $.ajax({
    method: `PATCH`,
    url: `/api/stories/${story.id}`,
    data: { story },
  });
}

export function deleteStory(storyId) {
  return $.ajax({
    method: `DELETE`,
    url: `/api/stories/${storyId}`,
  });
}
