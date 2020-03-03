import React from "react";
import UserShowContainer from "./users/user_show_container";
import SignupContainer from "./session/signup_container";
import { Route, HashRouter } from "react-router-dom";

export default () => {
  <HashRouter>
    <div>
      <Route path="/signup" component={SignupContainer} />
    </div>
  </HashRouter>
};