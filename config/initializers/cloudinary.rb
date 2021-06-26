return if ENV["ASSETS_PRECOMPILE"].present?
Cloudinary.config do |config|
  config.cloud_name = Rails.application.credentials.cloudinary['dtwvios6f']
  config.api_key = Rails.application.credentials.cloudinary['349753962719994']
  config.api_secret = Rails.application.credentials.cloudinary['TptQRG55JlnnbIXbOyqI3rfsxD0']
  config.secure = true
end
