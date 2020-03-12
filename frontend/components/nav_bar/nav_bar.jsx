import React from "react";
import { Link } from "react-router-dom";
import DropDown from  "../dropdown/drop_down";

class NavBar extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillUnmount() {
    this.props.closeDropDown();
  }

  render() {
    if (!this.props.currentUser) {
      return (
        <div className="nav-bar-container">
          <div className="nav-bar-left-container">
            <Link to="/feed" className="header-link">
              <h1 className="nav-bar-left-logo">Daily Prophet</h1>
            </Link>
          </div>
  
          <div className="nav-bar-right-container">
            <div className="nav-bar-right">
              <button
                className="login-button"
                onClick={e => { 
                  e.preventDefault();
                  this.props.openModal("Log In")
                }}
              >Sign in</button>
              <button
                className="signup-button"
                onClick={e => { 
                  e.preventDefault();
                  this.props.openModal("Sign Up")
                }}
              >Get started</button>
            </div>
          </div>
  
        </div>
      );
    } else {
  
      return (
        <div className="nav-bar-container">
          <div className="nav-bar-left-container">
            <Link to="/feed" className="header-link">
              <h1 className="nav-bar-left-logo">Daily Prophet</h1>
            </Link>
          </div>
  
          <div className="nav-bar-right-container">
            <button 
              className="user-profile-dropdown-icon" 
              onClick={() => this.props.openDropDown(this.props.dropDown)}>
              
              <img src={window.UserIcon} className="user-icon" />
            </button>
            <div>
              <div className="nav-bar-right"><DropDown /></div>
            </div>
          </div>
  
        </div>
      );
    };
  };
}

export default NavBar;