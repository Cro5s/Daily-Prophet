import * as SessionApiUtil from "../utils/session_api_util";

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";

export function receieveCurrentUser(user) {
  return {
    type: RECEIVE_CURRENT_USER,
    user,
  };
}

export function logoutCurrentUser() {
  return {
    type: LOGOUT_CURRENT_USER,
  };
}

export const signup = user => dispatch => {
  return SessionApiUtil.signup(user)
    .then(user => dispatch(receieveCurrentUser(user)));
};

export const login = user => dispatch => {
  return SessionApiUtil.login(user)
    .then(user => dispatch(receieveCurrentUser(user)));
};

export const logout = () => dispatch => {
  return SessionApiUtil.logout()
    .then( () => dispatch(logoutCurrentUser()));
};