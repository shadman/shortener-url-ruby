# Shortener URL in Ruby on Rails

update database configuration

gem install bundler

bundle install


rake db:migrate






# Resume JSON Parse with Ruby on Rails

## Live URL:
https://resume-json-parse-ruby.herokuapp.com/


## Specifications:
- Developed in Ruby 2.2 with Rails.
- Paste your Resume JSON as input in required format, then press 'Generate Resume' button to get display results.
- Have placed a sample Resume JSON in main page right after input area (fore demo).
- Have added a 'Copy Sample Resume' button, by that we can easily copy our sample Resume JSON to paste on input area.
- Tested with Firefox and Chrome.

## Deployment Steps:
- Create a directory for your Ruby Projects
- Need to clone/copy all code from repository on your Ruby project directory.
- Update database configurations
- Install RVM and Ruby by given commands below (if needed; otherwise install only gems. steps defined in 'Ruby setup with RVM')
- Run Migrations (Stps defined in 'Run Rake Migration')
- Run with puma server. (Steps defined in 'Run Project via Puma')
- After successful deployment and server run, you may access via http://localhost:3000.
- Cheers.

## Sample JSON:
- Sample json file is here 'app/views/resume/_sample.json.erb' (please don't delete or edit).

## Same application also developed in AngularJS here:
###LIVE: 
https://resume-json-parser.herokuapp.com/
###GIT REPO: 
https://github.com/shadman/resume-json-parser-angular

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
	rvm install 2.2

## Using installed Ruby version and setting it as default

	rvm use 2.2 --default

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
