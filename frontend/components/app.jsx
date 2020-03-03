import React from "react";
import SignupContainer from "./session/signup_container";
import { Route, HashRouter } from "react-router-dom";
import UserFeed from "./users/user_feed";
import HomePage from "./home/home";
import NavBarContainer from "./nav_bar/nav_bar_container";
import { AuthRoute, ProtectedRoute } from "../utils/route_utils";

export default () => {
  return (
    <HashRouter>
      <NavBarContainer />
      <div>
        <Route exact path="/" component={HomePage} />
        <ProtectedRoute path="/feed" component={UserFeed} />
        <AuthRoute path="/signup" component={SignupContainer} />
      </div>
    </HashRouter>
  );
};

