import React from "react";

class SplashPage extends React.Component {
  render() {
    return (
      <div className="splash-page-container">
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

        <p className="splash-page-message">
          Above is a list of topics you may find interesting.
        </p>

        <footer></footer>
      </div>
    );
  }
}

export default SplashPage;