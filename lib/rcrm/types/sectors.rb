module RCRM
  class Sectors < Selection
    def default_fields
      [Sector.new]
    end

    def type_name
      :sectors
    end
  end
end

