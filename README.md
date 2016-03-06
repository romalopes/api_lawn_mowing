== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

Rails 

rails new api_lawn_mowing -d mysql  --skip-test-unit
rake db:create
rails generate scaffold Lanw width:integer height:integer
rake db:migrate
rails generate scaffold mower x:integer y:integer headings:string commands:string lawn:references

bundle install
gem update bundler


Git
      git init
      git add . 
      git commit xxxxx
      git remote add origin https://github.com/romalopes/api_lawn_mowing.git
      git push -u origin master


rails generate rspec:install


Sending to Heroku

	- Change config/initializer/secret_token.rb
		 secret token used by Rails to encrypt session variables so that it is dynamically generated rather than hard-coded
			require 'securerandom'

			def secure_token
			  token_file = Rails.root.join('.secret')
			  if File.exist?(token_file)
			    # Use the existing token.
			    File.read(token_file).chomp
			  else
			    # Generate a new token and store it in token_file.
			    token = SecureRandom.hex(64)
			    File.write(token_file, token)
			    token
			  end
			end
			RomaMoneyRails::Application.config.secret_key_base = secure_token		 
	To make heroku work with Bootstrap
		
		1. In your config/enviroments/production.rb:
			config.cache_classes = true
			config.serve_static_assets = true
			config.assets.compile = true
			config.assets.digest = true
		2. In GemFile
			- Send gem 'sqlite3' to group:developement, test
			- And
			group :production do
			  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
			  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
			  gem 'pg', '0.15.1'
			  gem 'rails_12factor', '0.0.2'
			end
	Sending
		https://devcenter.heroku.com/articles/getting-started-with-ruby
		Heroku works with PostgresQL
			- add a the declarations in Gemfile to be like the following

		Before deploy to heroku
			$ bundle install --without production
			$ bundle update
			$ bundle install

		Basic Commands básicos:
			$ heroku create
			$ heroku apps:rename api-lawn-mowing
			$ git push heroku master
			$ heroku run rake db:migrate
			$ heroku open
			Running in http://romamoneyrails.herokuapp.com