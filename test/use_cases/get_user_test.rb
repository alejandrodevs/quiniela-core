require 'test_helper'

module Quiniela::Core
  class GetUserTest < MiniTest::Unit::TestCase
    def setup
      @user = UseCases::AddUser.add({
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      })
    end

    def test_get
      result = UseCases::GetUser.get(@user.id)
      assert_equal(result, @user)
    end
  end
end
