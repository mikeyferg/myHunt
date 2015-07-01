# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :producthunt, ENV['0f23ffe5f970da58a6ded581176e2f7c914e27a70bd6bc17dd5f17298ad786bf'], ENV['8618564ef043bd10c0dc38045d60fe7df9939530558f67129fd109e06f0c2e9a']
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :producthunt, '0f23ffe5f970da58a6ded581176e2f7c914e27a70bd6bc17dd5f17298ad786bf', '8618564ef043bd10c0dc38045d60fe7df9939530558f67129fd109e06f0c2e9a'
end
