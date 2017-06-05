Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  if os == :windows
    Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'
  end

  # require 'paperclip/media_type_spoof_detector'
  # module Paperclip
  #   class MediaTypeSpoofDetector
  #     def spoofed?
  #       false
  #     end
  #   end
  # end


  # Paperclip::Attachment.default_options[:default_url] = '/images/missing.jpg'
  # Paperclip::Attachment.default_options[:path] = ':rails_root/public/attachments/:env/:year/:month/:appeal_id/:hash.:extension'
  # Paperclip::Attachment.default_options[:url] = '/attachments/:env/:year/:month/:appeal_id/:hash.:extension'
  # Paperclip::Attachment.default_options[:hash_secret] = '3fec502e7851c75d1a0806369e47972e'

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  # config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
