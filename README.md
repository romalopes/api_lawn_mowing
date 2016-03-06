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
