import React from "react";
import NavBarContainer from "./nav_bar/nav_bar_container";
import UserFeedContainer from "./users/user_feed_container";
import SplashContainer from "./splash/splash_container";
import StoryShowContainer from "./stories/story_show_container";
import CreateStoryContainer from "./stories/create_story_container";
import EditStoryContainer from "./stories/edit_story_container";
import UserStoryIndexContainer from "./stories/user_story_index_container";
import Modal from "./modal/modal";
import { Redirect, Switch } from "react-router-dom";
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
        <ProtectedRoute
          path="/story/:storyId/edit"
          component={EditStoryContainer}
        />
        <ProtectedRoute path="/stories/new" component={CreateStoryContainer} />
        <ProtectedRoute
          path="/stories/:storyId"
          component={StoryShowContainer}
        />
        <ProtectedRoute
          path="/user/stories"
          component={UserStoryIndexContainer}
        />
        <ProtectedRoute path="/feed" component={UserFeedContainer} />
        <AuthRoute path="/" component={SplashContainer} />
        <Redirect to="/" />
      </Switch>
    </>
  );
};
