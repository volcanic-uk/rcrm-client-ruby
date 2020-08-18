require_relative 'middleware.rb'

module RCRM::Middleware
  class UserAgent
    def initialize(app = nil, options = {})
      @app = app
      @user_agent = options.delete(:agent) || "ruby-client/#{RCRM::VERSION}"
    end

    def call(request_env)
      request_env[:request_headers]['user-agent'] = @user_agent

      @app.call(request_env)
    end
  end
end
