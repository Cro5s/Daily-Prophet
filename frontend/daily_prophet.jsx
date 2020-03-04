import React from "react";
import ReactDom from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";


document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  let store;
  let preloadedState = undefined;

  if (window.currentUser) {
    preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;

  } else {
    
    store = configureStore();
  };
  window.store = store; // Remove  
  ReactDom.render(<Root store={ store }/>, root);
});