Apipie.configure do |config|
  config.translate = false
  config.default_locale = nil
  config.app_name                = "APMP-Api"
  config.api_base_url            = "/api/v1"
  config.doc_base_url            = "/docs"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/api/v1/*.rb"
end
