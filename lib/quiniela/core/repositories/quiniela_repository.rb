module Quiniela
  module Core
    module Repositories
      module QuinielaRepository
        class InMemory < AbstractRepository
          def persist(quiniela)
            @id += 1
            attrs = quiniela.to_hash.merge(id: @id)
            quiniela = Entities::Quiniela.new(attrs)
            records[@id] = quiniela
            quiniela
          end
        end
      end
    end
  end
end
