require 'prime'

module Euler
  module Solution3
    @number = 600_851_475_143

    def self.answer
      factors.max
    end

    private

    def self.factors
      Prime.prime_division(@number).map do |factor|
        factor.first
      end
    end
  end
end
