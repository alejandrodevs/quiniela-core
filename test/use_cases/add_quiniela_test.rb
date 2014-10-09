require 'test_helper'

module Quiniela::Core
  class AddQuinielaTest < MiniTest::Unit::TestCase
    def test_add
      quiniela = UseCases::AddQuiniela.add({ name: 'Quinielón' })
      assert_kind_of Entities::Quiniela, quiniela
      assert_equal({ id: 1, name: 'Quinielón' }, quiniela.to_hash)
    end
  end
end
