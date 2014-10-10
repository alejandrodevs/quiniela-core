require 'obvious'
require 'quiniela/core/version'
require 'quiniela/core/repository'

Dir[File.dirname(__FILE__) + '/core/entities/*.rb'].each{ |file| require file }
Dir[File.dirname(__FILE__) + '/core/use_cases/*.rb'].each{ |file| require file }
Dir[File.dirname(__FILE__) + '/core/repositories/*.rb'].each{ |file| require file }

module Quiniela
  module Core
    class << self
      def configure
        yield(self)
      end

      def repository(type, repo)
        Repository.register(type, repo)
      end
    end

    repository :user, Repositories::UserRepository::InMemory.new
    repository :quiniela, Repositories::QuinielaRepository::InMemory.new
    repository :subscription, Repositories::SubscriptionRepository::InMemory.new
  end
end
