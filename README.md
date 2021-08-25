# SURVEY CRAFT

master branch: 
[![Build Status](https://app.travis-ci.com/reinhardtcgr/SurveyCraft.svg?token=uvvdmzf7PxXcmYJBwppm&branch=main)](https://app.travis-ci.com/reinhardtcgr/SurveyCraft)

This README would normally document whatever steps are necessary to get the
application up and running.
But I will probably just fill it in with what I can recall.. if anything :D

Things you may want to cover:

* Ruby version
  * ruby '3.0.2'
* System dependencies
  * need to create .env file from .env.example
* Configuration
* Database creation
  * psql postgres
    * // to see users aka roles
    * \du 
    * // to create the needed users to create the database
    * create role surveycraft with createdb login password '<password>';
* Database initialization
  * rails db:setup
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
  * TravisCI
* ...
