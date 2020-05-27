import React from "react";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import { closeDropDown, openDropDown } from "../../actions/drop_down_actions";
import { logout } from "../../actions/session_actions";

function DropDown({ dropDown, closeDropDown, currentUser, logout }) {
  if (!dropDown) {
    return null;
  }

  return (
    <>
      <div className="transparent-modal" onClick={closeDropDown} />
      <div className="dd-background">
        <div className="dd-child" onClick={(e) => e.stopPropagation()}>
          <div onClick={closeDropDown} className="popover-arrow"></div>
          <div className="dd-wrapper">
            <ul className="dd-list">
              <div className="dd-profile-details">
                <div className="dd-profile-details-container">
                  <div className="pro-icon-container">
                    <Link
                      to={`/user/stories`}
                      className="pro-icon-link"
                      onClick={closeDropDown}
                    >
                      <img src={window.UserIcon} className="pro-icon" />
                    </Link>
                  </div>

                  <div className="name-username-container">
                    <Link
                      to={`/user/stories`}
                      className="name"
                      onClick={closeDropDown}
                    >
                      {currentUser.name}
                    </Link>
                    <Link
                      to={`/user/stories`}
                      className="username"
                      onClick={closeDropDown}
                    >
                      {"@" + currentUser.username}
                    </Link>
                  </div>
                </div>
              </div>
              <div className="dd-divider"></div>
              <li className="dd-new-story">
                <Link
                  to={`/stories/new`}
                  className="create-story-link"
                  onClick={closeDropDown}
                >
                  New story
                </Link>
              </li>
              <li className="dd-stories">
                <Link
                  to={"/user/stories"}
                  className="stories-page-link"
                  onClick={closeDropDown}
                >
                  Stories
                </Link>
              </li>
              <div className="dd-divider"></div>
              <li className="dd-profile-page">
                <Link
                  to={`/api/users/profile`}
                  className="nav-bar-profile"
                  onClick={closeDropDown}
                >
                  Profile
                </Link>
              </li>
              <li className="dd-logout">
                <Link
                  to="/"
                  className="logout-button"
                  onClick={() => logout().then(() => closeDropDown())}
                >
                  Sign out
                </Link>
              </li>
              <div className="dd-divider"></div>
            </ul>
          </div>
        </div>
      </div>
    </>
  );
}

const mapStateToProps = (state) => {
  return {
    currentUser: state.entities.users[state.session.id],
    dropDown: state.ui.dropDown,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeDropDown: () => dispatch(closeDropDown()),
    openDropDown: (dropDown) => dispatch(openDropDown(dropDown)),
    logout: () => dispatch(logout()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(DropDown);
