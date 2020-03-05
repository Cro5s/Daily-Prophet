import React from "react";
import { Link } from "react-router-dom";

export function HomePage({currentUser, logout, openModal}) {
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <h4 className="subscribe-button">Subscribe</h4>
        <h4 className="write-button">Write</h4>
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