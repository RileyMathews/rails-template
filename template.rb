gem_group :development do
  gem "rubocop"
  gem "solargraph"
end

gem_group :development, :test do
  gem "rspec-rails"
end

after_bundle do
  generate :controller, "Home", "index", "--skip-assets"
  genereate 'rspec:install'

  route "root to: 'home#index'"
end
