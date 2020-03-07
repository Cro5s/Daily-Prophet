import React from "react";
import { Link } from "react-router-dom";

export default (props) => {
  return (
    <footer className="splash-footer">

      <div className="splash-footer-container">

        <div className="splash-footer-first">
          <Link className="splash-footer-logo">DP</Link>
        </div>

        <div className="splash-footer-second">
          <button
            className="splash-footer-signup"
            onClick={() => props.openModal("Sign Up")}
          >Get started</button>

          <p className="splash-footer-msg">Have an account?</p>

          <button
            className="splash-footer-login"
            onClick={() => props.openModal("Log In")}
          >Sign in</button>

        </div>

        <div className="splash-footer-third">
          <div className="footer-link-1">
            <Link 
              to={`https://github.com/Cro5s`} className="splash-footer-link">
              GitHub
            </Link>
          </div>
          <div className="footer-link-2">
            <Link to={`https://www.linkedin.com/in/kadeem-jackson-4349348a/`}
              className="splash-footer-link">
              LinkedIn
            </Link>
          </div>
        </div>

      </div>

    </footer>
  );
}