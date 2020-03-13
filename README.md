# Daily-Prophet
Daily Prophet, a Medium clone, is an online platform where users can publicly post stories, which are informative guides, or opinions on different topics that they want to share. Users can respond to stories and also give claps to stories.  

[Live Demo](https://dailyprophet.herokuapp.com/ "Daily Prophet")

## Technologies
  * Backend: Ruby on Rails/ActiveRecord/PostgreSQL
  * Frontend: React/Redux/Javascript/jQuery
  * [FontAwesome](https://fontawesome.com/)

## Features
  * Secure backend and frontend user authentication using BCrypt
  * Modal design for a dynamic feel to user login/signup experience
  * Standard CRUD operations with the ability to create a story with the option to attach an image
  * Dynamic navigation bar that changes depending on the route
  * Navigation dropdown menu to help keep the navigation bar clean and concise while still allowing for easy navigation
  * User feed being filtered to show only stories written by other authors
  * Accurate datestamps for edited and created stories
  * User profile where users can see the claps each of their stories recieved and a list of stories they have given claps to
  
###  Log in/Sign up
A single modal that displays both the log in and sign up forms equipped with a demo login feature for quick access to full site.
### User Feed
When a user logs in, they are redirected to their feed page, which has three main section divisions. The top portion which displays 5 Daily Prophet picks for the day. Underneath the daily picks the feed is split into two halves, the left side being stories from other users and the right side being the top 4 stories that a popular on Daily Prophet based on claps.
