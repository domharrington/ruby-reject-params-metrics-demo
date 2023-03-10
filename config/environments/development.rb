require "readme/metrics"

Rails.application.configure do
  options = {
    api_key: "INSERT KEY HERE",
    reject_params: ['data.attributes']
  }

  config.middleware.use Readme::Metrics, options do |env|
    {
      api_key: "guest",
      label: "Guest User",
      email: "guest@example.com"
    }
  end

end
