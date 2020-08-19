# APPTRACK

## Description

Apptrack Backend is a RESTful API built with Ruby on Rails and a POSTgres database. This application allows for JWT authentication of users, password encryption through Bcrypt, and provides serveral end points that allows for data fetching. 

## EndPoints
These endpoints contain the url used for the live demo
  * https://apptracklite-api.herokuapp.com/folder_items
  * https://apptracklite-api.herokuapp.com/folders
  * https://apptracklite-api.herokuapp.com/resapps
  * https://apptracklite-api.herokuapp.com/resumes
  * https://apptracklite-api.herokuapp.com/applications
  * https://apptracklite-api.herokuapp.com/users
  * https://apptracklite-api.herokuapp.com/appmonth
  * https://apptracklite-api.herokuapp.com/signup
  * https://apptracklite-api.herokuapp.com/login
  * https://apptracklite-api.herokuapp.com/profile
  
## Authentication

The authentication endpoints are specified below:
  * https://apptracklite-api.herokuapp.com/signup
  
      The Signup endpoint creates a new instance of a user using the create method in the User controller
  * https://apptracklite-api.herokuapp.com/login
  
      The Login endpoint validates credentials and assigns a token using the Auth controller
  * https://apptracklite-api.herokuapp.com/profile
  
      The Profile endpoint sends JSON data including the information of the current user using the profile method in the User controller
