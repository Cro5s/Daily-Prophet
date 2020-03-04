import React from "react";
import { connect } from "react-redux"
import { Redirect, Route, withRouter } from "react-router-dom";

const Protected = ({loggedIn, path, exact, component: Component}) => (
  <Route exact={exact} path={path} render={props => (
      loggedIn ? <Component {...props} /> : <Redirect to="/" />
    )}
  />
);

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.id)
});


export const ProtectedRoute = withRouter(connect(mapStateToProps)(Protected));