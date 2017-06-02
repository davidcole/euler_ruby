require 'minitest/autorun'
require_relative '../../lib/solutions/solution_1'

class TestSolution1 < Minitest::Test
  def test_answer
    assert_equal(233_168, Euler::Solution1.answer)
  end
end
