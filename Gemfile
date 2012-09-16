source 'https://rubygems.org'

gem 'thin'
gem 'rails', '3.2.7'

platforms :mri_18, :mingw_18 do
  group :mysql do
    gem 'mysql'
  end
end

platforms :mri_19, :mingw_19 do
  group :mysql do
    gem 'mysql2', '~> 0.3.11'
  end
end

gem 'devise'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
