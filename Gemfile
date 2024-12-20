source "https://rubygems.org"

ruby "3.3.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.5"

gem 'pg' #, '~> 0.18'
gem 'active_model_serializers'
gem 'activerecord-reset-pk-sequence'
gem 'bootsnap', require: false
# Use Puma as the app server
gem 'puma', '~> 6.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  gem 'byebug', platform: :mri

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false

  gem 'rspec-rails', '~> 3.5' # , :github => 'rspec/rspec-rails'
  gem 'rails-controller-testing'

  # Checks ruby code grammar
  gem 'rubocop', require: false
  # With rspec
  gem 'rubocop-rspec'
  # With guard
  gem 'guard-rubocop'
end

group :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
end

group :coverage do
  gem 'simplecov', :require => false
end