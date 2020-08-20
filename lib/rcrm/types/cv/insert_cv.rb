module RCRM
  class InsertCV < CV
    self.type_name = 'insertCv'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
