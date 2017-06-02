require 'minitest/autorun'
require_relative '../../lib/solutions/solution_2'

class TestSolution2 < Minitest::Test
  def test_answer
    assert_equal(4_613_732, Euler::Solution2.answer)
  end
end
