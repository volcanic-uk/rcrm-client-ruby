module RCRM
  class Selection
    attr_reader :fields, :arguments

    def initialize(fields: nil, arguments: nil)
      self.fields = fields.nil? ? self.default_fields : fields
      @arguments = arguments.nil? ? self.default_arguments : arguments
    end

    def fields=(value)
      @fields = value.respond_to?(:map) ? value : [value]
    end

    def arguments=(value)
      @arguments = value.is_a?(Arguments) ? value : Arguments.new(value)
    end

    def default_fields
      []
    end

    def default_arguments
      Arguments.new
    end

    def type_name
      raise "#{self.class.name} does not provide an implementation of #type_name"
    end

    def to_graphql
      processed_fields = fields.map { |fld| fld.respond_to?(:to_graphql) ? fld.to_graphql : fld }
      " #{type_name} #{arguments.to_graphql} { #{processed_fields.join(', ')} } "
    end
  end
end

