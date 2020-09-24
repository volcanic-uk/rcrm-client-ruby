require_relative 'object_attribute'

module RCRM
  class DeleteObjectAttribute < ObjectAttribute
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new(objectAttributeId: input)
    end
  end
end
