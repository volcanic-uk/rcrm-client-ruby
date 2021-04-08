module RCRM
  class TemplateTypesFilter < Filter
    def template_type_id_eq(id)
      where templateTypeId: id.to_i
    end
  end
end
