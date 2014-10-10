module Quiniela
  module Core
    module Repositories
      module SubscriptionRepository
        class InMemory < AbstractRepository
          def persist(subscription)
            @id += 1
            attrs = subscription.to_hash.merge(id: @id)
            subscription = Entities::Subscription.new(attrs)
            records[@id] = subscription
            subscription
          end

          def where(conditions)
            all.select do |subscription|
              conditions.all? do |attr, value|
                subscription.send(attr) == value
              end
            end
          end
        end
      end
    end
  end
end
