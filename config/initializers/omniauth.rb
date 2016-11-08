OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '585753446724-ds98lb8chjq0b2nmpkbetarkf5d79rem.apps.googleusercontent.com', 'a-vMMCY3bodTJTOwNiixFK_p', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
