module Quiniela
  module Core
    class Repository
      class << self
        attr_accessor :adapter

        def for(type)
          repositories[type] ||= build_repository_for(type)
        end

        def build_repository_for(type)
          Repositories::QuinielaRepository::InMemory.new
        end

        def repositories
          @_repositories ||= {}
        end
      end
    end
  end
end
