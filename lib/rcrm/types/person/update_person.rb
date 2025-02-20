require_relative 'person'

module RCRM
  class UpdatePerson < Person
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
