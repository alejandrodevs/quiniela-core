module Quiniela
  module Core
    module UseCases
      class UnsubscribeUserFromQuiniela
        def self.unsubscribe(user, quiniela)
          subscription = Repository.for(:subscription).where(
            quiniela_id: quiniela.id,
            user_id: user.id
          ).first
          Repository.for(:subscription).delete(subscription)
        end
      end
    end
  end
end
