require_relative 'boot'

require 'rails/all'
require 'dotenv/load'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WaitxSeeAgency
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.smtp_settings = {
      address: 'smtp.gmail.com',
      port: 587,
      domain: 'gmail.com',
      user_name: ENV['EMAIL_ADRESS'],
      password: ENV['EMAIL_MDP'],
      authentication: 'plain',
      enable_starttls_auto: true
    }
    config.assets.initialize_on_precompile = false
  end
end
Rails.application.config.assets.paths << Rails.root.join('vendor')
