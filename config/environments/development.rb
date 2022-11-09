require "active_support/core_ext/integer/time"

Base2Calculator::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  # Use memcached in development
  #config.cache_store = :dalli_store, 'localhost', { :namespace => "base2_calculator" }

  # Use redis in development
  redis_servers = [ 'redis://localhost:6379/0' ]

  config.cache_store = :redis_cache_store, {driver: :hiredis, url: redis_servers, :namespace => "base2_cache" }

  # sunspot
  if ENV["DATABASE_URL"].nil?
    Sunspot.config.solr.url = 'http://localhost:8982/solr'
  end
end
