module RCRM
  class Selection
    class << self
      attr_accessor :valid_fields
    end
    
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

    def to_graphql
      processed_fields = fields.map { |fld| fld.respond_to?(:to_graphql) ? fld.to_graphql : fld }
      " #{type_name} #{arguments.to_graphql} { #{processed_fields.join(', ')} } "
    end

    def type_name
      self.class.type_name
    end

    class << self
      attr_writer :type_name

      def type_name
        @type_name ||= begin
          nme = self.name.split('::').last
          nme[0] = nme[0].downcase
          nme
        end
      end
    end
  end
end

