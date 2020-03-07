import React from "react";
import NavBarContainer from "./nav_bar/nav_bar_container";
import UserFeedContainer from "./users/user_feed_container";
import SplashContainer from "./splash/splash_container";
import SplashFooterContainer from "./splash/footer_container";
import  Modal from "./modal/modal";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { ProtectedRoute } from "../utils/route_util";

export default () => {
  return (
    <>
      <Modal />
      <header className="nav-bar-header">
        <div className="nav-bar-container">
          <nav className="nav-bar">
            <Link to="/" className="header-link">
              <h1 className="nav-bar-left-logo">Daily Prophet</h1>
            </Link>
            <NavBarContainer />
          </nav>
        </div>
      </header>
      <body className="body">
        <SplashContainer />
      </body>
      <SplashFooterContainer />      

      <Switch>
        <ProtectedRoute path="/users/:userId" component={UserFeedContainer} />
        {/* <Route path="/" component={HomeContainer} /> */}
        <Redirect to="/" />
      </Switch>
    </>
  );
};

