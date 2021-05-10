module RCRM
  class Jobs < Collection
    def default_fields
      [Job.new]
    end
  end
end
