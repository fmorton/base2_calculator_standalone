require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  #Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  Bundler.require(:default, :assets, Rails.env)
end

require "base2_cms"
#DEBUG: require "base2_cvb"

module Base2Calculator
  class Application < Rails::Application
    config.load_defaults 7.0

    # time zone
    config.time_zone = "Eastern Time (US & Canada)"

    # configure sensitive parameters which will be filtered from the log file
    config.filter_parameters += [:password]

    # Compression: test with curl -i --head "Accept-Encoding: gzip,deflate" https://www.visitindy.com
    # Compression: test with curl -i --head "Accept-Encoding: gzip,deflate" https://base2-visitindy-test.herokuapp.com
    config.middleware.use Rack::Deflater

    # see everything in the log (default is :info)
    unless ENV["DATABASE_URL"].nil?
      #config.logger.level = Logger.const_get('INFO')
      #config.log_level = :debug
      config.log_level = :warn
    end

    # dependencies
    require_dependency "#{config.root}/lib/base2_calculator"

    # since rails 5.1.1
    config.active_record.belongs_to_required_by_default = false
    config.action_controller.permit_all_parameters = true

    # since rails 7.0.2.4 to get around really long asset filenames
    config.assets.configure do |env|
      env.digest_class = Digest::MD5
    end
  end
end

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
