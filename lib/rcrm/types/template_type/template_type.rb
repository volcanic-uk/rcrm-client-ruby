module RCRM
  class TemplateType < Selection
    def default_fields
      %i(systemCode templateTypeId templateTypeName)
    end
  end
end