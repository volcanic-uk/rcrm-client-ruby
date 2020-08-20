module RCRM
  class Collection < Selection
    def filter(value)
      arguments.filter(value)
      self
    end
  end
end
