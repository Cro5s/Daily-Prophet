import React from "react";
import { Link } from "react-router-dom";

export default (props) => {
  debugger
  return (
    <div className="splash-page-container">
      <div>

        <h1 className="splash-page-msg-main">
          Get smarter about what matters to you.
        </h1>

        <ul className="topics-list-container">
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Politics</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Potions</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Trending</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Relationships</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">All Things Muggle</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Hogwarts</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">
              Defense Against The Dark Arts
            </li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Pets</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Spells</li>}
          </li>
          <li className="topics-list">
            <div className="hashtag"><i class="fas fa-hashtag"></i></div>
            {<li className="topics-list-name">Quidditch</li>}
          </li>
        </ul>

        <div className="msg-container">
          <h3 className="splash-page-msg-2">
            Above is a list of topics you may find interesting.
          </h3>
          
          <button className="splash-signup-btn" onClick={() => props.openModal("Sign Up")}
          >Get started</button>

          <div className="splash-login-container">
            <p className="splash-login-msg">Already have an account?</p>
            <button className="splash-login-btn" onClick={() => props.openModal("Log In")}>Sign in.</button>
          </div>
        </div>

        <h2 className="splash-page-msg-3">
          Daily Prophets, just for you.
        </h2>
        <p className="splash-paragraphs">Your privacy stays yours. We don't sell your data or target you with ads. Ever.</p>

        <div className="how-we-roll">

          <div className="hwr-right">
            <h2 className="splash-page-msg-4">
              How we do things differently.
            </h2>
            <p className="hwr-paragraphs">Daily Prohet is not like any other platform on the internet. Our sole purpose is to help you find compelling ideas, knowledge, and perspectives on all things magical and non-magical alike. We don’t serve ads—we serve you, the curious reader who loves to learn new things. Daily Prophet is home to thousands of independent voices, and we combine wizards/witches, technology, and a little spell of magic to find the best reading for you—and filter out the rest.
            </p>
          </div>
        </div>
      </div>  

    </div>
  );
}