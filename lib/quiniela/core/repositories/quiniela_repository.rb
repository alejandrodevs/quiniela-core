module Quiniela
  module Core
    module Repositories
      module QuinielaRepository
        class InMemory
          def initialize
            @quinielas = {}
            @id = 0
          end

          def persist(quiniela)
            @id += 1
            attrs = quiniela.to_hash.merge(id: @id)
            quiniela = Entities::Quiniela.new(attrs)
            quinielas[@id] = quiniela
            quiniela
          end

          def count
            quinielas.length
          end

          private

          attr_reader :quinielas
        end
      end
    end
  end
end
