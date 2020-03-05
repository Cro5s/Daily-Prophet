import React from "react";
import { Link } from "react-router-dom";

export function HomePage({currentUser, logout, openModal}) {
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <button className="subscribe-button">Subscribe</button>
        <button className="write-button">Write</button>
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
        <Link to="/">
          <button className="logout-button" onClick={logout}>Log Out</button>
        </Link>
      </div>
    );
  };
}