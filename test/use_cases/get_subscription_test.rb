require 'test_helper'

module Quiniela::Core
  class GetSubscriptionTest < MiniTest::Unit::TestCase
    def setup
      @quiniela = UseCases::AddQuiniela.add({ name: 'Quinielón' })
      @user = UseCases::AddUser.add({
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      })
    end

    def test_get
      subscription = UseCases::SubscribeUserToQuiniela.subscribe(@user, @quiniela)
      result = UseCases::GetSubscription.get(@user, @quiniela)
      assert_equal(result, subscription)
    end
  end
end
