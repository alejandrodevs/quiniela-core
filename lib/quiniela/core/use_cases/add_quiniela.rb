module Quiniela
  module Core
    module UseCases
      class AddQuiniela
        def self.add(attrs)
          attrs[:id] ||= -1
          quiniela = Entities::Quiniela.new(attrs)
          Repository.for(:quiniela).persist(quiniela)
        end
      end
    end
  end
end
