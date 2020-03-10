import React from "react";
import NavBarContainer from "./nav_bar/nav_bar_container";
import UserFeedContainer from "./users/user_feed_container";
import FeedContainer from "./feed/feed_container";
import SplashContainer from "./splash/splash_container";
import StoryShowContainer from "./stories/story_show_container";
import CreateStoryContainer from "./stories/create_story_contrainer";
import  Modal from "./modal/modal";
import { Route, Redirect, Link, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/route_util";

export default () => {
  return (
    <>
      <Modal />
      <header className="nav-bar-header">
          <nav className="nav-bar">
            <NavBarContainer />
          </nav>
      </header>

      <Switch>
        <ProtectedRoute path="/stories/new" component={CreateStoryContainer} />
        {/* <ProtectedRoute path="/stories/:id" component={StoryShowContainer} /> */}
        <ProtectedRoute path="/users/:userId" component={UserFeedContainer} />
        {/* <ProtectedRoute path="/feed" component={FeedContainer} /> */}
        <AuthRoute path="/" component={SplashContainer} />
        <Redirect to="/" />
      </Switch>
    </>
  );
};

