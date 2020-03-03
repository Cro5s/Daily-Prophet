import React from "react";
import SignupContainer from "./session/signup_container";
import { Route, HashRouter } from "react-router-dom";
import UserFeed from "./users/user_feed";
import HomePage from "./home/home";
import NavBarContainer from "./nav_bar/nav_bar_container";
import { AuthRoute } from "../utils/route_utils";

export default () => {
  return (
    <HashRouter>
      <div>
        <Route path="/" component={NavBarContainer} />
        <Route exact path="/" component={HomePage} />
        <Route path="/feed" component={UserFeed} />
        <AuthRoute path="/signup" component={SignupContainer} />
      </div>
    </HashRouter>
  );
};

