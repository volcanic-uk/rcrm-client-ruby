module RCRM
  class SelectionSet
    def initialize(selections)
      case selections
      when self.class
        @selections = selections.instance_variable_get(:@selections)
      when Selection
        @selections = [selections]
      else
        @selections = selections
      end
    end

    def add_selection(selection)
      @selections << selection
      self
    end

    def to_graphql
      "{ #{@selections.map(&:to_graphql).join(", \n")} }"
    end

    def to_query
      "query #{to_graphql}"
    end

    def to_mutation
      "mutation #{to_graphql}"
    end
  end
end

