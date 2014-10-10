require 'test_helper'

module Quiniela::Core
  class GetQuinielaTest < MiniTest::Unit::TestCase
    def setup
      @quiniela = UseCases::AddQuiniela.add({ name: 'Quinielón' })
    end

    def test_get
      result = UseCases::GetQuiniela.get(@quiniela.id)
      assert_equal(result, @quiniela)
    end
  end
end
