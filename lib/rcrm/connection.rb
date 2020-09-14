require 'faraday'
require 'faraday_middleware'
require 'json'
require_relative 'graphql'
require_relative 'types'

Dir[File.join(__dir__, 'middleware', '*.rb')].each {|file| require file }

module RCRM
  class Connection
    def self.defaults
      @defaults ||= {
        url: ENV.fetch('RCRM_API_URL', nil),
        integrator_key: ENV.fetch('RCRM_INTEGRATOR_KEY', nil),
        api_key: ENV.fetch('RCRM_API_KEY', nil),
        request_id: nil,
        user_agent: "ruby-client/#{RCRM::VERSION}"
      }
    end

    attr_accessor :url, :integrator_key, :api_key, :user_agent, :request_id

    def initialize(**opts)
      opts = self.class.defaults.merge(opts)
      missing = opts.map do |k,v|
        if respond_to?("#{k}=")
          send "#{k}=", v
          nil
        else
          k
        end
      end.compact

      raise ArgumentError.new("Unexpected arguments: #{missing.join(', ')}") \
        unless missing.empty?
    end

    def connection
      @connection ||= Faraday.new(url: url) do |conn|
        conn.request :json

        conn.use RCRM::Middleware::RequestID, request_id: request_id
        conn.use RCRM::Middleware::Authentication, api_key: api_key, integrator_key: integrator_key
        conn.use RCRM::Middleware::UserAgent

        conn.response :json, content_type: /\bjson$/, :parser_options => { :object_class => OpenStruct }
      end
    end

    def query(value, variables = {})
      value = SelectionSet.new(value)
      request(value.to_query, variables)
    end

    def mutation(value, variables = {})
      value = SelectionSet.new(value)
      request(value.to_mutation, variables)
    end

    def headers
      {
        'User-Agent': user_agent,
        'integratorKey': integrator_key,
        'apiKey': api_key,
        'content-type': 'application/json'
      }
    end

    def request(value, variables = {})
      body = {
        operationName: nil,
        variables: variables,
        query: value
      }.to_json
      connection.post nil, body
    end
  end
end
