module RCRM
  class Filter < Argument
    def type_name
      :filter
    end

    alias :where :add
  end
end
