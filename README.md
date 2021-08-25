# SURVEY CRAFT

This README would normally document whatever steps are necessary to get the
application up and running.

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
