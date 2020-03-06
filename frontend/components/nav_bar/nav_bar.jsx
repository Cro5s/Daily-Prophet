import React from "react";
import { Link } from "react-router-dom";

export function NavBar({ currentUser, logout, openModal }) {
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <button
          className="login-button"
          onClick={() => openModal("Log In")}
        >Sign in</button>
        <button
          className="signup-button"
          onClick={() => openModal("Sign Up")}
        >Get started</button>
      </div>
    );
  } else {
    return (
      <div className="nav-bar-right">
        <h3 className="nav-bar-username">{currentUser.username}</h3>
        <Link
          to={`/api/users/${currentUser.id}`}
          className="nav-bar-profile"
        >Profile</Link>
        <div className="user-profile-dropdown-icon"><
          i class="fas fa-user"></i>
        </div>
        <Link to="/">
          <button className="logout-button" onClick={logout}>Log Out</button>
        </Link>
      </div>
    );
  };
}