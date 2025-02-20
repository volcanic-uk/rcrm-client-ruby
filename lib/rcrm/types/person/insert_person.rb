require_relative 'person'

module RCRM
  class InsertPerson < Person
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end

    def type_name
      :insertPerson
    end
  end
end
