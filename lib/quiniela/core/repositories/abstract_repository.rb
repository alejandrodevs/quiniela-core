module Quiniela
  module Core
    module Repositories
      class AbstractRepository
        def initialize
          @records = {}
          @id = 0
        end

        def persit(record)
          raise NotRepositoryMethod.new
        end

        def count
          records.size
        end

        def find(id)
          records[id]
        end

        def all
          records.values
        end

        def where(conditions)
          raise NotRepositoryMethod.new
        end

        private
        attr_reader :records
      end

      class NotRepositoryMethod < StandardError; end
    end
  end
end
