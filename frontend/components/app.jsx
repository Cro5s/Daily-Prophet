import React from "react";
import SignupFormContainer from "./session/signup_form_container";
import LoginFormContainer from "./session/login_form_container"
import HomeContainer from "./home/home_container";
import UserFeedContainer from "./users/user_feed_container";
import  Modal from "./modal/modal";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/route_util";

export default () => {
  return (
    <>
      <Modal />
      <header>
        <div className="nav-bar-container">
          <nav className="nav-bar">
            <Link to="/" className="header-link">
              <h1>Daily Prophet</h1>
            </Link>
          </nav>
        </div>
      </header>

      <Switch>
        <ProtectedRoute path="/users/:userId" component={UserFeedContainer} />
        <Route exact path="/" component={HomeContainer} />
        <Redirect to="/" />
      </Switch>
    </>
  );
};

