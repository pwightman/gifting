OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, CONFIG["GOOGLE_KEY"], CONFIG["GOOGLE_SECRET"]
end
