require 'minitest/autorun'
require_relative '../../lib/solutions/solution_3'

class TestSolution3 < Minitest::Test
  def test_answer
    assert_equal(6_857, Euler::Solution3.answer)
  end
end
