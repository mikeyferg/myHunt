Rails.application.config.middleware.use OmniAuth::Builder do
  provider :producthunt, ENV['producthunt_api_key'],ENV['producthunt_secret']
end
