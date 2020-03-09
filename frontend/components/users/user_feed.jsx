import React from "react";

class UserFeed extends React.Component {
  render() {
    return (
      <div className="story-form-page-container">

        <div className="story-form-container">
          <div className="story-form">
            <div className="story-form-h1-container">
              <h1 className="story-form-h1">Your Stories</h1>

              <div className="story-form-buttons-container">
                <div className="story-form-button-container">
                  <button className="create-story-btn">Write a story</button>
                </div>
              </div>

              <div className="stories-container">
                <li></li>
              </div>

            </div>
          </div>
        </div>

      </div>
    );
  }
}

export default UserFeed;