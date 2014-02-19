source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
ruby '2.1.0'

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end
group :production do
  gem 'rails_12factor'
end
group :development, :test do
  gem 'rspec-rails'
end
  gem 'pg' # Heroku doesnt support sqlite

gem 'uglifier', '>= 1.3.0'
gem 'less-rails'
gem "twitter-bootstrap-rails"

gem 'google-api-client'

gem 'forem', :github => 'radar/forem', :branch => 'rails4'
gem 'friendly_id'
gem 'cancan'
gem 'will_paginate'

gem 'coffee-rails', '~> 4.0.0' 
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'devise'
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
