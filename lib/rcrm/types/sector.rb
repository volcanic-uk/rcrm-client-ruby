module RCRM
  class Sector < Selection
    def default_fields
      %i(sectorId sectorName)
    end

    def type_name
      :sector
    end
  end
end

