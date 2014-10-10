module Quiniela
  module Core
    module UseCases
      class SubscribeUserToQuiniela
        def self.subscribe(user, quiniela)
          subscription = Entities::Subscription.new({
            id:           -1,
            quiniela_id:  quiniela.id,
            user_id:      user.id
          })
          Repository.for(:subscription).persist(subscription)
        end
      end
    end
  end
end
