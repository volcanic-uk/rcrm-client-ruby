require_relative 'phone'

module RCRM
  class UpdatePhone < Phone
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
