# Reclaim Web App 
## A Ruby on Rails Backend API
## Makers Academy Final Group Challenge - Team LADZ

## Summary

The Reclaim web application is a loyalty card application that rewards users for recycling pacakging and promotes small businesses.

The app is comprised of two independent programs - a front end react web app and a backend ruby on rails API.

This is the backend API hosted on Heroku, created with Ruby on Rails. It acts as the server for out frontend stamp application storing user, stamp and rewards data. 

[Video Demo](https://youtu.be/0LR2igzIuHQ)

Created by 
- Will Spencer (willspencer16)
- Jack Hooper (crotchetycrow)
- Alec Yates (Yates101)
- Jack McCarthy (jackmcc08)

## To use
- To interact and use the entire application, please follow the instructions in the [Frontend Repo](https://github.com/jackmcc08/ladz-reclaim-react-fe) 
- To contribute/check out the backend code, please follow the instructions below.

## Techstack
- Ruby v3.0.0
- Rails
- PostgreSQL
- JWT - Authentication Token
- bCrypt - password hashing
- Rspec and Rubocop

## Development Summary

Team LADZ worked over a two week period to develop this loyalty card application. We worked throughout in an Agile manner, running two day sprints with daily morning stand-ups and evening retros. We used a Trello board to manage our work and ensure we had visiual representation of our activities. 

In the initial stages of the project we did a group brainstorm to identify ideas for the project and concluded we wanted to build a front end application which interacted with a backend API. We also wanted the challenge of learning a new technology (React) and cementing our prior learning (Rails). 

We choose Rails for the backend, as we felt it was best suited to develop a stable API which we knew how to use and could interact well with the databases through ActiveRecord. One of the cool features we implemented was the use of JWT - JSON Web Tokens. These AuthTokens are generated on login by the API and then stored at the browser local storage, each request to the API is then validated with this AuthToken which enhanced the security of the product.

We defined and completed out MVP by the third day of the project, following the principle of building a skateboard and not a car door. By this time we had hosted the backend API on Heroku so we could simulate working with a live API product. 

We had a strong focus on learning as a team and shared our learning and demoed the features we built. 

By the end of the two weeks, we had implemented a functioning API which could interact with our front end and store the data we needed. 

## To see the code and develop further

**Note - this is a forked repo, the frontend is linked to a different Heroku hosted API (which this repo is cloned from)**

First, clone this repository. Then:

```zsh
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bin/rails server # Start the server at localhost:3000
```

<!-- 
## Start with Creating a User (if you don't have one already)
 Create User: `curl -X POST -d 'user[username]=test_user5' -d 'user[password]=test_password5' http://localhost:3001/api/v1/users`

## Login

Login: `curl -X POST -d 'username=test_user5' -d 'password=test_password5' http://localhost:3001/api/v1/authenticate`

copy the auth_token and put it into future requests // not currently working via CURL - have not been able to workout.


## Create a stamp

## Reward Model Curl Requests

Index: curl -X POST -d 'user[username]=test_user5' -d 'user[password]=test_password5' http://localhost:3000/api/v1/users`

Create: curl -X POST -d reward[reward_name]="" -d reward[reward_content]="" -d reward[business_id]=""  http://localhost:3000/api/v1/rewards

Update: curl -X PATCH -d reward[reward_content]="" http://localhost:3000/api/v1/rewards/1

Destroy: curl -X DELETE http://localhost:3000/api/v1/rewards/1


## User Reward Model Curl Requests

Index: curl http://localhost:3000/api/v1/user_rewards

Create: curl -X POST -d user_reward[reward_id]="" -d user_reward[user_id]="" -d user_reward[redeemed]=""  http://localhost:3000/api/v1/user_rewards

Update: curl -X PATCH -d user_reward[redeemed]="" http://localhost:3000/api/v1/user_rewards/1

Destroy: curl -X DELETE http://localhost:3000/api/v1/user_rewards/1 -->


## Reference Materials

Material used for setting up user model and controller:
https://www.crondose.com/2019/04/building-the-user-model-and-session-controller-for-the-rails-api-authentication-app/
