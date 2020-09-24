require_relative 'object_attribute'

module RCRM
  class InsertObjectAttribute < ObjectAttribute
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
