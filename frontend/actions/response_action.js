import * as ResponseApiUtil from "../utils/response_api_util";

export const RECEIVE_RESPONSE = "RECEIVE_RESPONSE";
export const REMOVE_RESPONSE = "REMOVE_RESPONSE";
export const RECEIVE_RESPONSE_ERRORS = "RECEIVE_RESPONSE_ERRORS";
export const CLEAR_RESPONSE_ERRORS = "CLEAR_RESPONSE_ERRORS";

export function receiveResponse(payload) {
  return {
    type: RECEIVE_RESPONSE,
    response: payload.response,
    user: payload.author,
  };
}

export function removeResponse(responseId) {
  return {
    type: REMOVE_RESPONSE,
    responseId,
  };
}

export function receiveResponseErrors(errors) {
  return {
    type: RECEIVE_RESPONSE_ERRORS,
    errors,
  };
}

export function clearResponseErrors() {
  return {
    type: CLEAR_RESPONSE_ERRORS,
  };
}

export const fetchResponse = (responseId) => (dispatch) => {
  return ResponseApiUtil.fetchResponse(responseId).then(
    (response) => dispatch(receiveResponse(response)),
    (error) => dispatch(receiveResponseErrors(error.responseJSON))
  );
};

export const createResponse = (response) => (dispatch) => {
  return ResponseApiUtil.fetchResponse(response).then(
    (createdResponse) => dispatch(receiveResponse(createdResponse)),
    (error) => dispatch(receiveResponseErrors(error.responseJSON))
  );
};

export const deleteResponse = (responseId) => (dispatch) => {
  return ResponseApiUtil.fetchResponse(responseId).then(
    () => dispatch(receiveResponse(responseId)),
    (error) => dispatch(receiveResponseErrors(error.responseJSON))
  );
};
