require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Action Cable access from any origin (Uncomment if needed).
  # config.action_cable.disable_request_forgery_protection = true

  # Action Mailer settings
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = false

  # Active Record settings
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true

  # Active Storage settings
  config.active_storage.service = :local

  # Asset requests logger output suppression
  config.assets.quiet = true

  # Caching settings
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.cache_store = :memory_store
    config.public_file_server.headers["Cache-Control"] = "public, max-age=#{2.days.to_i}"
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Consider all requests local for full error reports
  config.consider_all_requests_local = true

  # Cache classes and eager load code
  config.cache_classes = false
  config.eager_load = false

  # Enable server timing
  config.server_timing = true

  # Deprecation settings
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  # I18n settings (Uncomment to raise error on missing translations)
  # config.i18n.raise_on_missing_translations = true

  # Logging of deprecation notices to the Rails logger (this line is duplicated)
  # config.active_support.disallowed_deprecation = :raise
end
