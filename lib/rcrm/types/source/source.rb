module RCRM
  class Source < Selection
    def default_fields
       %i(sourceId systemCode description)
    end
  end
end

