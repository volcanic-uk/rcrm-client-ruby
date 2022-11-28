require_relative 'address'

module RCRM
  class UpdateAddress < Address
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
