require_relative 'address'

module RCRM
  class InsertAddress < Address
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end

    def type_name
      :insertAddress
    end
  end
end
