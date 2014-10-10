module Quiniela
  module Core
    module UseCases
      class AddUser
        def self.add(attrs)
          attrs[:id] ||= -1
          user = Entities::User.new(attrs)
          Repository.for(:user).persist(user)
        end
      end
    end
  end
end
