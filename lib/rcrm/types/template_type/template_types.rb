module RCRM
  class TemplateTypes < Collection
    def default_fields
      [TemplateType.new]
    end
  end
end

