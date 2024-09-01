require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ScheduleManager
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # デフォルトのロケールを日本語に設定
    config.i18n.default_locale = :ja

    # 使用するロケールを英語のみに制限
    #config.i18n.available_locales = [:en]
    #config.i18n.fallbacks = true
    # ロケールファイルのロードパスを追加
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
  end
end
