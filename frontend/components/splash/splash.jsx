import React from "react";
import { Link } from "react-router-dom";

export default () => {
  return (
    <div className="splash-page-container">
      <div>

        <h1 className="splash-page-message">
          Get smarter about what matters to you.
        </h1>

        <ul className="topics-list-container">
          <li className="topics-list">Politics</li>
          <li className="topics-list">Potions</li>
          <li className="topics-list">Trending</li>
          <li className="topics-list">Relationships</li>
          <li className="topics-list">All Things Muggle</li>
          <li className="topics-list">Hogwarts</li>
          <li className="topics-list">Defense Against The Dark Arts</li>
          <li className="topics-list">Pets</li>
          <li className="topics-list">Spells</li>
          <li className="topics-list">Quidditch</li>
        </ul>

        <p className="splash-page-msg">
          Above is a list of topics you may find interesting.
        </p>

        <button className="splash-signup-btn">Get started</button>

        <div className="splash-login-container">
          <p className="splash-login-msg">Already have an account?</p>
          <button className="splash-login-btn">Sign in.</button>
        </div>

        <h2 className="splash-page-msg">
          All Daily Prophet's, just for you.
        </h2>
        <p className="splash-paragraphs">Your privacy stays yours. We don't sell your data or target you with ads. Ever.</p>

        <h2 className="splash-page-msg">
          How we do things differently.
        </h2>
        <p className="splash-paragraphs">Daily Prohet is not like any other platform on the internet. Our sole purpose is to help you find compelling ideas, knowledge, and perspectives on all things magical and non-magical alike. We don’t serve ads—we serve you, the curious reader who loves to learn new things. Daily Prophet is home to thousands of independent voices, and we combine wizards/witches, technology, and a little spell of magic to find the best reading for you—and filter out the rest.
        </p>
      </div>  

      <footer>

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
          <Link className="splash-footer-link">GitHub</Link>
          <Link className="splash-footer-link">LinkedIn</Link>
        </div>

      </footer>
    </div>
  );
}