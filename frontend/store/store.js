import { createStore, applyMiddleware } from "redux";
import rootReducer from "../reducers/root_reducer";
import thunk from "redux-thunk";
import logger from "redux-logger";
import { composeWithDevTools } from "redux-devtools-extension";

export default (preloadedState = {}) => {
  if (process.env.NODE_ENV === "development") {
    return createStore(
      rootReducer,
      preloadedState,
      composeWithDevTools(applyMiddleware(thunk, logger))
    );
  } else {
    return createStore(
      rootReducer,
      preloadedState,
      composeWithDevTools(applyMiddleware(thunk))
    );
  }
};
