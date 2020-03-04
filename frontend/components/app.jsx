import React from "react";
import SignupFormContainer from "./session/signup_form_container";
import LoginFormContainer from "./session/login_form_container"
import { Route, HashRouter } from "react-router-dom";
import UserFeed from "./users/user_feed";
import HomePage from "./home/home";
import NavBarContainer from "./nav_bar/nav_bar_container";
import { AuthRoute, ProtectedRoute } from "../utils/route_util";

export default () => {
  return (
    <HashRouter>
      <NavBarContainer />
      <div>
        <Route exact path="/" component={HomePage} />
        <ProtectedRoute path="/feed" component={UserFeed} />
        <AuthRoute path="/login" component={LoginFormContainer} />
        <AuthRoute path="/signup" component={SignupFormContainer} />
      </div>
    </HashRouter>
  );
};

