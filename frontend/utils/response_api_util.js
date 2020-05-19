// export function fetchResponses() {
//   return $.ajax({
//     method: `GET`,
//     url: `/api/responses`,
//   });
// }

export function fetchResponse(responseId) {
  return $.ajax({
    method: `GET`,
    url: `/api/responses/${responseId}`,
  });
}

export function createResponse(response) {
  return $.ajax({
    method: `POST`,
    url: `/api/responses`,
    data: { response },
  });
}

export function deleteResponse(responseId) {
  return $.ajax({
    method: `DELETE`,
    url: `/api/responses/${responseId}`,
  });
}
