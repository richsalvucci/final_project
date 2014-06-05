OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1421894208088022', '26ea71a1aa99a951bf3e3376b836bbd0'
end
