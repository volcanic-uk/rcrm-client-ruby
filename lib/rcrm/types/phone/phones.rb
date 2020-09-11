module RCRM
  class Phones < Collection
    def default_fields
      [Phone.new]
    end

    class << self
      def only_number
        self.class.new(fields: Phone.new(fields: [:num]))
      end
    end
  end
end

