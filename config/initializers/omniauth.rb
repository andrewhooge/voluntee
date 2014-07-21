OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['479299915547939'], ENV['4f85641ec78785465b2b27af397005f6']
end