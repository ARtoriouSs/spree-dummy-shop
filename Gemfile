source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'spree', '~> 3.6.4'
gem 'spree_auth_devise', '~> 4.0'
gem 'spree_gateway', '~> 3.3'
gem 'spree_i18n', github: 'spree-contrib/spree_i18n'
gem 'spree_slider', github: 'spree-contrib/spree_slider'
gem 'spree_recently_viewed', github: 'spree-contrib/spree_recently_viewed'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'pry'

group :development, :test do
  gem 'dotenv-rails', :github => "bkeepers/dotenv"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
