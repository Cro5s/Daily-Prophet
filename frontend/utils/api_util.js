export function signup(user) {
  return $.ajax({
    method: `POST`,
    url: `/api/users`,
    data: { user },
  });
}

export function loginSession(user) {
  return $.ajax({
    method: `POST`,
    url: `/api/session`,
    data: { user },
  });
}

export function logoutSession() {
  return $.ajax({
    method: `DELETE`,
    url: `/api/session`,
  });
}