module Quiniela
  module Core
    module Entities
      class Subscription < Obvious::Entity
        value :id, Fixnum
        value :user_id, Fixnum
        value :quiniela_id, Fixnum
      end
    end
  end
end
