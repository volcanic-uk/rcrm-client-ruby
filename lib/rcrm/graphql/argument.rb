require 'time'

module RCRM
  class Argument
    class << self
      attr_accessor :valid_fields
    end

    def initialize(**data)
      add(data)
    end

    def to_graphql
      serialize(data)
    end

    protected

    def add(pairs)
      raise ArgumentError, "#{self.class.name} was provided with invalid data to add" \
        unless pairs.is_a?(Hash)

      pairs = pairs.inject({}) { |memo, (k, v)| memo[k.to_sym] = v; memo  }

      valid_fields = self.class.valid_fields || []
      invalid = valid_fields.empty? ? [] : pairs.keys - valid_fields

      raise "#{invalid.join(', ')} are not valid fields" unless invalid.empty?

      @data ||= {}
      pairs.each { |key, value| data[key] = value }
      self
    end

    def serialize(node)
      case node
      when Hash
        "{ #{node.map { |key, value| "#{key}: #{serialize(value)}" }.join(', ')} }"
      when Array
        "[ #{node.map { |nd| serialize(nd) }.join(', ')} ]"
      when Time
        "\"#{node.iso8601}\""
      when String, Symbol
        "\"#{node}\""
      when Numeric
        node
      end
    end

    private

    attr_reader :data
  end
end
