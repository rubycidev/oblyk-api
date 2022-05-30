# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:8081',
            'http://localhost:8080',
            'http://localhost:4500',
            'http://localhost:4501',
            'http://localhost:3000',
            'https://next.oblyk.org',
            'https://oblyk.org'

    resource '*',
             headers: :any,
             credentials: true,
             methods: %i[get post put patch delete options head]
  end

  allow do
    origins '*'

    resource '/api/v1/public/*',
             headers: :any,
             methods: %i[get options]
  end
end
