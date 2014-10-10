module Quiniela
  module Core
    class Repository
      class << self
        def for(type)
          repositories[type]
        end

        def register(type, repo)
          repositories[type] = repo
        end

        def reset
          repositories.each do |type, repo|
            repositories[type] = repo.class.new
          end
        end

        private

        def repositories
          @_repositories ||= {}
        end
      end
    end
  end
end
