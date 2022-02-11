require_relative 'index'
require 'test/unit'

class TestIndex < Test::Unit::TestCase
  def test_simple
    assert_equal(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]), 5)
    assert_equal(find_it([1,1,2,-2,5,2,4,4,-1,-2,5]), -1)
    assert_equal(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]), 5)
    assert_equal(find_it([10]), 10)
    assert_equal(find_it([1,1,1,1,1,1,10,1,1,1,1]), 10)
  end
  def test_typecheck
    assert_raise(RuntimeError) { SimpleNumber.new('assert_equal')}
  end
end
