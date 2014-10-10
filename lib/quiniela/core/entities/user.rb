module Quiniela
  module Core
    module Entities
      class User < Obvious::Entity
        value :id, Fixnum
        value :name, String
        value :email, String
      end
    end
  end
end
