require 'test_helper'

module Quiniela::Core
  class UnsubscribeUserFromQuinielaTest < MiniTest::Unit::TestCase
    def setup
      @quiniela = UseCases::AddQuiniela.add({ name: 'Quinielón' })
      @user = UseCases::AddUser.add({
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      })
      @subscription = UseCases::SubscribeUserToQuiniela.subscribe(@user, @quiniela)
    end

    def test_unsubscribe
      assert_equal UseCases::GetSubscription.get(@user, @quiniela), @subscription
      UseCases::UnsubscribeUserFromQuiniela.unsubscribe(@user, @quiniela)
      assert_nil UseCases::GetSubscription.get(@user, @quiniela)
    end
  end
end
