module Quiniela
  module Core
    module UseCases
      class GetSubscription
        def self.get(user, quiniela)
          Repository.for(:subscription).where(
            quiniela_id: quiniela.id,
            user_id: user.id
          ).first
        end
      end
    end
  end
end
