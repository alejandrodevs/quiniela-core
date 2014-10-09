require 'obvious'
require 'active_support/core_ext/string'
require 'quiniela/core/version'
require 'quiniela/core/repository'

Dir[File.dirname(__FILE__) + '/core/entities/*.rb'].each{ |file| require file }
Dir[File.dirname(__FILE__) + '/core/use_cases/*.rb'].each{ |file| require file }
Dir[File.dirname(__FILE__) + '/core/repositories/*.rb'].each{ |file| require file }

module Quiniela
  module Core
    class << self
      attr_accessor :repository

      def configure
        yield
      end

      def repository
        yield Repository
      end
    end
  end
end
