import React from "react";
import { Link } from "react-router-dom";

export function NavBar({ currentUser, logout, openModal }) {
  if (!currentUser) {
    return (
      <div className="nav-bar-container">
        <Link to="/" className="header-link">
          <h1 className="nav-bar-left-logo">Daily Prophet</h1>
        </Link>
        <div className="nav-bar-right">
          <button
            className="login-button"
            onClick={e => { 
              e.preventDefault();
              openModal("Log In")
            }}
          >Sign in</button>
          <button
            className="signup-button"
            onClick={e => { 
              e.preventDefault();
              openModal("Sign Up"
            )}}
          >Get started</button>
        </div>
      </div>
    );
  } else {
    return (
      <div className="nav-bar-right"></div>
    );
  };
}