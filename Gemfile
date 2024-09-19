source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"
gem "rails", "~> 7.2"
gem 'sprockets-rails', '~> 3.4.2'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem 'sassc-rails'
gem 'devise'

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "byebug"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "faker"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "database_cleaner-active_record"
  gem "hotwire-livereload"
end

group :development do
  gem "web-console"
  gem "solargraph"
  gem 'annotate'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "tailwindcss-rails", "~> 2.7"
