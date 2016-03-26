# About app

It's a simple blog application implemented using Ruby on Rails. App is also deployed to [Heroku](https://gentle-depths-60912.herokuapp.com/).

## Features
1. SQLite used for development
1. Posts implemented using scaffold
3. Users authentication using devise gem
4. Basic styles using bootstrap-sass gem

## How to run this app
If you are determined to run this app on your local server follow the instructions:
- clone this repo to your local repository
-	in your terminal enter to the app folder
-	run `rake db:migrate` to create local database
-	run `rails s` to start a local server
-	open your browser at `http://localhost:3000`

Now you will see the main page of the app.

## How to use this app
- Note that if you want to make changes to the blog you need to sign in. Otherwise you can only view existing posts.
- Authenticated users can create posts and comments. Also they can delete or edit both, but only ones belonging to them.
- You can edit your account by choosing `Edit user`.
