import React from "react";
import ReactDom from "react-dom";
import Root from "./components/root";
import createStore from "./store/store";


document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  let preloadedState = undefined;

  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  };
  const store = createStore(preloadedState);

  ReactDom.render(<Root store={ store }/>, root);
});