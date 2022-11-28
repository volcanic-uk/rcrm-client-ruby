module RCRM
  class AddressTypes < Collection
    def default_fields
      [AddressType.new]
    end
  end
end

