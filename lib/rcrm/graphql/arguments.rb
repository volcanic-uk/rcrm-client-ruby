module RCRM
  class Arguments
    def initialize(**args)
      @args = args
    end

    def to_graphql
      if @args.empty?
        ''
      else
        "( #{@args.map { |key, value| "#{key}: #{serialize(value)}" }.join(', ')} )"
      end
    end

    # define common argument setters
    # not all are valid in all cases...
    { page_size: :pageSize,
      page: :page,
      quick_search: :quickSearch,
      order_by: :orderBy,
      filter: :filter,
      input: :input
    }.each do |meth, remote|
      define_method("#{meth}") do |value|
        @args[remote] = value
        self
      end
    end

    protected

    def serialize(node)
      return node.to_graphql if node.respond_to?(:to_graphql)
      
      case node
      when Hash
        "{ #{node.map { |key, value| "#{key}: #{serialize(value)}" }.join(', ')} }"
      when Array
        "[ #{node.map { |nd| serialize(nd) }.join(', ')} ]"
      when Time
        "\"#{node.iso8601}\""
      when String
        "\"#{node}\""
      when Numeric
        node
      end
    end
  end
end
