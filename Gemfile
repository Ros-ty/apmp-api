source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.1'
gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'

gem 'apipie-rails'
# gem "paperclip", "~> 5.0.0"
# gem 'aws-sdk', '~> 2.3'
gem 'active_model_serializers', '~> 0.10.0'
gem 'pg', '~> 0.18.4'
# gem 'will_paginate', '~> 3.1.0'
gem 'devise_token_auth'

# gem 'mini_magick', '~> 4.8'
gem 'rack-cors'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  # gem 'rspec-rails', '~> 3.5'
  gem 'sqlite3'
  # gem 'faker'
end

group :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
