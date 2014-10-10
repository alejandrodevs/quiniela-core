require 'test_helper'

module Quiniela::Core
  class SubscribeUserToQuinielaTest < MiniTest::Unit::TestCase
    def setup
      @quiniela = UseCases::AddQuiniela.add({ name: 'Quinielón' })
      @user = UseCases::AddUser.add({
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      })
    end

    def test_subscribe
      subscription = UseCases::SubscribeUserToQuiniela.subscribe(@user, @quiniela)
      assert_instance_of Entities::Subscription, subscription
      assert_equal({
        id: 1,
        quiniela_id: @quiniela.id,
        user_id: @user.id
      }, subscription.to_hash)
    end
  end
end
