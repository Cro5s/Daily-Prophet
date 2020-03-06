import React from "react";
import { Link } from "react-router-dom";

export default () => {
  return (
    <footer className="splash-footer">

      <div className="splash-footer-container">

        <div className="splash-footer-first">
          <Link className="splash-footer-logo">DP</Link>
        </div>

        <div className="splash-footer-second">
          <button
            className="splash-footer-signup"
            onClick={() => openModal("Sign Up")}
          >Get started</button>

          <p className="splash-footer-msg">Have an account?</p>

          <button
            className="splash-footer-login"
            onClick={() => openModal("Log In")}
          >Sign in</button>

        </div>

        <div className="splash-footer-third">
          <div className="footer-link-1">
            <Link className="splash-footer-link">GitHub</Link>
          </div>
          <div className="footer-link-2">
            <Link className="splash-footer-link">LinkedIn</Link>
          </div>
        </div>

      </div>

    </footer>
  );
}