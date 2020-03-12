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

export function createStory(formData) {
  return $.ajax({
    method: `POST`,
    url: `/api/stories`,
    data: formData,
    contentType: false,
    processData: false,
  });
}

export function updateStory(formData) {
  return $.ajax({
    method: `PATCH`,
    url: `/api/stories/${formData.id}`,
    data: { story },

  });
}

export function deleteStory(storyId) {
  return $.ajax({
    method: `DELETE`,
    url: `/api/stories/${storyId}`,
  });
}