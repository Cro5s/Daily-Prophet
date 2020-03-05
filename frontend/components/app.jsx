import React from "react";
import HomeContainer from "./home/home_container";
import UserFeedContainer from "./users/user_feed_container";
import  Modal from "./modal/modal";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { ProtectedRoute } from "../utils/route_util";

export default () => {
  return (
    <>
      <Modal />
      <header>
        <div className="nav-bar-container">
          <nav className="nav-bar">
            <Link to="/" className="header-link">
              <h1 className="nav-bar-left-logo">Daily Prophet</h1>
            </Link>
            <HomeContainer />
          </nav>
        </div>
      </header>

      <Switch>
        <ProtectedRoute path="/users/:userId" component={UserFeedContainer} />
        {/* <Route path="/" component={HomeContainer} /> */}
        <Redirect to="/" />
      </Switch>
    </>
  );
};

