Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[3]
  config.api_key = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[1]
  config.api_secret = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[2]
  config.secure = true
  config.cdn_subdomain = true
end
