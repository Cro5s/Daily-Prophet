import { loginSession, logoutSession, signup } from "../utils/api_util";

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

export const createNewUser = formUser => dispatch => {
  return signup(formUser)
    .then(newUser => dispatch(receieveCurrentUser(newUser)));
};

export const login = formUser => dispatch => {
  return loginSession(formUser)
    .then(currentUser => dispatch(receieveCurrentUser(currentUser)));
};

export const logout = () => dispatch => {
  return logoutSession()
    .then( () => dispatch(logoutCurrentUser()));
};