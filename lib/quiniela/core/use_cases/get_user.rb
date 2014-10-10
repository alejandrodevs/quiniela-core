module Quiniela
  module Core
    module UseCases
      class GetUser
        def self.get(id)
          Repository.for(:user).find(id)
        end
      end
    end
  end
end
