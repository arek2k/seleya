require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Seleya
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set UTC +01 time zone
    config.time_zone = 'Warsaw'

    # Autoload files from lib/ directory
    config.autoload_paths += %W(#{config.root}/lib)

    # Render exceptions
    config.action_dispatch.show_exceptions = true

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'cms', '*.{rb,yml}').to_s]
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :en
  end
end
