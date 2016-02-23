require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'devise'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeviseEx
  class Application < Rails::Application
    require 'devise'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.encoding = "utf-8"
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.assets.precompile += [ 'application.js', 'admin.js', 'admin/events.js', 'admin/gallery.js', 'frontendgallery.js']
    config.assets.precompile += [ 'application.css', 'admin.css','admin/events.css', 'admin/gallery.css', 'frontendgallery.css']
    
    # Enable the asset pipeline
    config.assets.enabled = true
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
