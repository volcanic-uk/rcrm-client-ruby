require_relative 'middleware.rb'

module RCRM::Middleware
  class Authentication
    def initialize(app = nil, options = {})
      @app = app
      @api_key = options.delete(:api_key)
      @integrator_key = options.delete(:integrator_key)
    end

    def call(request_env)
      request_env[:request_headers]['apiKey'] ||= api_key
      request_env[:request_headers]['integratorKey'] ||= integrator_key

      @app.call(request_env)
    end

    private

    attr_reader :api_key, :integrator_key
  end
end
