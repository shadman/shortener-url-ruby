# Shortener URL in Ruby on Rails

## Live URL:
https://shortener-url-ruby.herokuapp.com/

## Specifications:
- Developed in Ruby 2.2 with Rails.
- Had a plan to use MongoDB for large number of traffic (getting some exceptions and dont have that much time to resolve).
- You can create a short URL of any long URL.
- Every short url will be unique.
- High performance can support morethan 500 million users (with mongoDB).
- Using Free MySQL (as getting exception with mongoDB in Rails)
- Added URL rewriting for shortest URL on server to experince a live taste.
- Tracking number of hits for every short URL
- Storing creation date time as well
- Can easily integrate short dedicated domain name for url

## Deployment Steps:
- Create a directory for your Ruby Projects.
- Need to clone/copy all code from repository on your created Ruby project directory.
- Update database configurations ( 'config/database.yml' ).
- Install RVM and Ruby by given commands below (if needed; otherwise install only gems. steps defined in 'Ruby setup with RVM')
- Run Migrations (Stps defined in 'Run Rake Migration')
- Run with puma server. (Steps defined in 'Run Project via Puma')
- After successful deployment and server run, you may access via http://localhost:3000.
- Cheers.

## Previously developed in PHP and Mongo for this assignment here:
###LIVE: 
https://shortener-url-app.herokuapp.com
###GIT REPO: 
https://github.com/shadman/url-shortener-mongo-php

--------------

# Run Rake Migration

	rake db:migrate

# Ruby setup with RVM

## Installing stable RVM First

	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	\curl -sSL https://get.rvm.io | bash -s stable --rails

## Source your RVM scripts

	source ~/.rvm/scripts/rvm
	
## Installing stable Ruby 2.2 via RVM

	curl -sSL https://get.rvm.io | bash -s stable --ruby
	rvm install ruby-2.2

## Using installed Ruby version and setting it as default

	rvm use ruby-2.2 --default

## Show you a list of installed Ruby versions

	rvm list

## Run intall Rails gem command on your created project directory

	gem install rails

## Installing bundler for Bundle Install

	gem install bundler

## Installing your bundles from Gemfile

	bundle install 


# Run Project via Puma

	rails s


Cheers !