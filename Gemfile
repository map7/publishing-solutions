source 'https://rubygems.org'

group :production do
  gem 'puma'                      # web server for concurrency
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.11.3'

gem 'pg', '~> 0.21'              # PostgreSQL

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.12'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
group :development do 
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-passenger'
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'dragonfly-s3_data_store'
end

# FIXME: Change this to a stable version number when refinerycms get their shit together.
gem 'refinerycms'#, git: 'https://github.com/refinery/refinerycms', branch: 'master'

gem 'quiet_assets', group: :development # Removes asset logs

# Add support for searching inside Refinery's admin interface.
gem 'refinerycms-acts-as-indexed', ['~> 2.0', '>= 2.0.0']

# Add support for Refinery's custom fork of the visual editor WYMeditor.
gem 'refinerycms-wymeditor', ['~> 1.0', '>= 1.0.6']

# The default authentication adapter
gem 'refinerycms-authentication-devise', '~> 1.0'

gem 'devise', git: 'https://github.com/plataformatec/devise' , branch: '3-stable'

gem 'refinerycms-image_slideshows',git: 'https://github.com/bisscomm/refinerycms-image-slideshows', branch: 'master'
gem 'refinerycms-inquiries', '~> 3.0'

gem 'refinerycms-backlists', path: 'vendor/extensions'

gem 'nivo-rails'                # Frontpage slideshow/carousel
gem 'owlcarousel-rails', '1.1.3.3'         # Backlists slideshow/carousel
