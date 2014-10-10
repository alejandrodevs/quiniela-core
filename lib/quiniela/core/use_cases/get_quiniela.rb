module Quiniela
  module Core
    module UseCases
      class GetQuiniela
        def self.get(id)
          Repository.for(:quiniela).find(id)
        end
      end
    end
  end
end
