import React from "react";
import SignupContainer from "./session/signup_container";
import { Route, HashRouter } from "react-router-dom";
import HomePage from "./users/user_home_page";

export default () => {
  return (
    <HashRouter>
      <div>
        <Route path="/" component={HomePage} />
        <Route path="/signup" component={SignupContainer} />
      </div>
    </HashRouter>
  );
};

