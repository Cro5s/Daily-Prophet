import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import { closeDropDown } from "../../actions/drop_down_actions";

function DropDown({dropDown, closeDropDown, currentUser}) {
  if (!dropDown) {
    return null; 
  }


  return (
    <div className="dd-wrapper">
      <div className="user-profile-dropdown-icon">
        <i className="fas fa-user"></i>
      </div>

      <ul className="dd-list">
        <li className="dd-profile-details">
          <div className="dd-profile-details-container">
            <div className="pro-icon"><i className="fas fa-user"></i></div>

            <div className="name-username-container">
              <h3 className="name">{currentUser.name}</h3>
              <h3 className="username">{currentUser.username}</h3>
            </div>
          </div>
        </li>
        <li className="dd-new-story">
          <Link
            to={"/newStory"}
            className="create-story-link">
            New Story
              </Link>
        </li>
        <li className="dd-stories">
          <Link
            to={"/Stories"}
            className="stories-page-link">
            Stories
              </Link>
        </li>
        <li className="dd-profile-page">
          <Link
            to={`/api/users/${currentUser.id}`}
            className="nav-bar-profile">
            Profile
              </Link>
        </li>
        <li className="dd-logout">
          <Link to="/">
            <button className="logout-button" onClick={logout}>
              Log Out
                </button>
          </Link>
        </li>
      </ul>

      <div className="dd-background" onClick={closeDropDown}>
        <div className="dd-child" onClick={e => e.stopPropagation()}>
          {component}
        </div>

      </div>
    </div>
  );
}

const mapStateToProps = state => {
  return {
    currentUser: state.entities.users[state.session.currentUserId],
  };
}

const mapDispatchToProps = dispatch => {
  return {
    closeDropDown: () => dispatch(closeDropDown()),
  };
}

export default connect(mapStateToProps, mapDispatchToProps)(DropDown);