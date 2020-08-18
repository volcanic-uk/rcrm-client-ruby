require 'securerandom'

require_relative 'middleware.rb'

module RCRM::Middleware
  class RequestID
    def initialize(app = nil, options = {})
      @app = app
      @request_id = options.delete(:request_id)
    end

    def call(request_env)
      request_env[:request_headers]['x-request-id'] ||= request_id

      @app.call(request_env)
    end

    private

    def request_id
      # two separate requests to handle the `call` returning nil
      id = @request_id.respond_to?(:call) ? @request_id.call : nil
      
      id || @request_id || SecureRandom.uuid
    end
  end
end
