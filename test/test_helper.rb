require 'minitest/autorun'
require 'quiniela/core'

require 'coveralls'
Coveralls.wear!
Coveralls::Output.silent = true

require 'simplecov'
SimpleCov.start do
  minimum_coverage 50
end

class MiniTest::Unit::TestCase
  def teardown
    Quiniela::Core::Repository.reset
  end
end
