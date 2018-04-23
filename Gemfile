source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'jbuilder', '~> 2.5'

gem 'react-rails'
gem 'slim-rails'
gem 'webpacker', github: 'rails/webpacker'

gem 'pdfkit'
gem 'wicked_pdf', '~> 1.1'
gem 'wkhtmltopdf-binary'

gem 'ridgepole'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'foreman'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
