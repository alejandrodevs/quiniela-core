require 'test_helper'

module Quiniela::Core
  class AddUserTest < MiniTest::Unit::TestCase
    def test_add
      user = UseCases::AddUser.add({
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      })
      assert_kind_of Entities::User, user
      assert_equal({
        id: 1,
        name: 'Alejandro Gutiérrez',
        email: 'alejandrodevs@gmail.com'
      }, user.to_hash)
    end
  end
end
