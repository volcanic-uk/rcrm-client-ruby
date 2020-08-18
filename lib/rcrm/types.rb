require_relative 'graphql.rb'

require_relative 'types/base_types.rb'

Dir[File.join(__dir__, 'types', '**', '*.rb')].each {|file| require file }
