export function createResponse(response) {
  return $.ajax({
    method: `POST`,
    url: `/api/responses/`,
    data: response,
  });
}

export function deleteResponse(responseId) {
  return $.ajax({
    method: `DELETE`,
    url: `/api/responses/${responseId}`,
  });
}
