export function fetchUser(id) {
  return $.ajax({
    method: `GET`,
    url: `/api/users/${id}`,
  });
}