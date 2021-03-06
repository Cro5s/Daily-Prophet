import React from "react";
import { Link } from "react-router-dom";

export default (props) => {
  return (
    <div className="splash-page-container">
      <div>
        <h1 className="splash-page-msg-main">
          Get smarter about what matters to you.
        </h1>

        <ul className="topics-list-container">
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Politics</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Potions</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Trending</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Relationships</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">All Things Muggle</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Hogwarts</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Defense Against The Dark Arts</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Pets</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Spells</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Quidditch</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Brooms</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Mythical Beasts</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Gringotts Investing</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Transfiguration</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Enchantments</p>
          </li>
          <li className="topics-list">
            <div className="hashtag">
              <i className="fas fa-hashtag"></i>
            </div>
            <p className="topics-list-name">Ministry of Magic</p>
          </li>
        </ul>

        <div className="msg-container">
          <h3 className="splash-page-msg-2">
            Above is a list of topics you may find interesting.
          </h3>

          <button
            className="splash-signup-btn"
            onClick={() => props.openModal("Sign Up")}
          >
            Get started
          </button>

          <div className="splash-login-container">
            <p className="splash-login-msg">Already have an account?</p>
            <button
              className="splash-login-btn"
              onClick={() => props.openModal("Log In")}
            >
              Sign in.
            </button>
          </div>
        </div>

        <h2 className="splash-page-msg-3">Daily Prophets, just for you.</h2>
        <p className="splash-paragraphs">
          Your privacy stays yours. We don't sell your data or target you with
          ads. Ever.
        </p>

        <div className="how-we-roll">
          <div className="hwr-right">
            <h2 className="splash-page-msg-4">How we do things differently.</h2>
            <div className="hwr-paragraphs-container">
              <>
                Daily Prophet is not like any other platform on the internet.
                <p className="hwr-paragraphs-highlight">
                  Our sole purpose is to help you find compelling ideas,
                  knowledge, and perspectives on all things magical and
                  non-magical alike.
                </p>
                We don’t serve ads—we serve you, the curious reader who loves to
                learn new things. Daily Prophet is home to thousands of
                independent voices, and we combine wizards/witches, technology,
                and a little spell of magic to find the best reading for you—and
                filter out the rest.
              </>
            </div>
          </div>
        </div>
      </div>

      <footer className="splash-footer">
        <div className="splash-footer-container">
          <div className="splash-footer-first">
            <Link 
            to="/feed"
            className="splash-footer-logo">DP</Link>
          </div>

          <div className="splash-footer-second">
            <button
              className="splash-footer-signup"
              onClick={() => props.openModal("Sign Up")}
            >
              Get started
            </button>

            <p className="splash-footer-msg">Have an account?</p>

            <button
              className="splash-footer-login"
              onClick={() => props.openModal("Log In")}
            >
              Sign in
            </button>
          </div>

          <div className="splash-footer-third">
            <div className="footer-link-1">
              <a 
                href="https://github.com/Cro5s"
                className="splash-footer-link">
                GitHub
              </a>
            </div>
            <div className="footer-link-2">
              <a 
                href="https://www.linkedin.com/in/kadeem-jackson-4349348a"
                className="splash-footer-link">
                LinkedIn
              </a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}