import * as UserApiUtil from "../utils/user_api_util";

export const RECEIVE_USER = "RECEIVE_USER";

export function receiveUser(user) {
  return {
    type: RECEIVE_USER,
    user,
  };
}

export const fetchUser = id => dispatch => {
  return UserApiUtil.fetchUser(id)
    .then(user => dispatch(receiveUser(user)));
};