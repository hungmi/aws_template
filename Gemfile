source 'https://rubygems.org'
ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks', '2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# gem 'simple_form'
gem 'awesome_rails_console'
# gem 'omniauth', '1.2.2'
# gem 'omniauth-facebook', '3.0.0'
# gem 'mini_magick'
# gem 'fog-aws', '0.9.4'
# gem 'carrierwave', github:'carrierwaveuploader/carrierwave'
gem 'figaro'
gem 'pg'
# gem "lazyload-rails"
# gem 'fastclick-rails'
# gem 'ransack'
# gem 'delayed_job_active_record'
# gem 'capybara'
# gem 'poltergeist'
# gem "daemons"
# gem 'whenever', :require => false
# gem 'spreadsheet'
# gem 'kaminari'
# gem "select2-rails"
# gem 'bootstrap-datepicker-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug'
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  gem "bullet"#, :group => "development"
  # gem 'better_errors'
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv'
  # gem 'capistrano3-delayed-job', '~> 1.0'
end

group :production do
  # gem "rack-timeout"
  # gem 'rails_12factor'
  gem 'puma'
end
