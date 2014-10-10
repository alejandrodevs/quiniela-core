module Quiniela
  module Core
    module Repositories
      module UserRepository
        class InMemory < AbstractRepository
          def persist(user)
            @id += 1
            attrs = user.to_hash.merge(id: @id)
            user = Entities::User.new(attrs)
            records[@id] = user
            user
          end
        end
      end
    end
  end
end
