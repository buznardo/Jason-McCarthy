source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'jquery-rails'
gem 'aws-sdk', '~> 1.3.4'
gem "paperclip", "3.0.4"
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'foreman'
  gem 'heroku'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
