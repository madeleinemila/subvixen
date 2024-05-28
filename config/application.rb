require_relative "boot"

# Note: DB use was decommissioned for demo deployment.
# Uncomment require "rails/all" to reenable db use:
# require "rails/all"
# And comment out the following require statements:
require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Subvixen
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.active_support.cache_format_version = 7.0
    config.active_support.disable_to_s_conversion = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
