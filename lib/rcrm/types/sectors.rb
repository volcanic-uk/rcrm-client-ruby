module RCRM
  class Sectors < Collection
    def default_fields
      [Sector.new]
    end
  end
end

