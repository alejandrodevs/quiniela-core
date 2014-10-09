require 'minitest/autorun'

require 'coveralls'
Coveralls.wear!
Coveralls::Output.silent = true

require 'simplecov'
SimpleCov.start do
  minimum_coverage 90
end
