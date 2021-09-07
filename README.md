# SURVEY CRAFT
 
[![Build Status](https://app.travis-ci.com/reinhardtcgr/SurveyCraft.svg?token=uvvdmzf7PxXcmYJBwppm&branch=main)](https://app.travis-ci.com/reinhardtcgr/SurveyCraft)
 TravisCI: main🌳

[![codecov](https://codecov.io/gh/reinhardtcgr/SurveyCraft/branch/main/graph/badge.svg?token=X59G4DAHFB)](https://codecov.io/gh/reinhardtcgr/SurveyCraft)

[![Maintainability](https://api.codeclimate.com/v1/badges/96d38a8f8b3a7f8404ad/maintainability)](https://codeclimate.com/github/reinhardtcgr/SurveyCraft/maintainability)
<!--[![Test Coverage](https://api.codeclimate.com/v1/badges/96d38a8f8b3a7f8404ad/test_coverage)](https://codeclimate.com/github/reinhardtcgr/SurveyCraft/test_coverage)-->

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
  * CodeCov
    * to validate Repository YAML: `curl --data-binary @codecov.yml https://codecov.io/validate`
* ...
