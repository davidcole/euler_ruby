module Euler
  module Solution1
    @max          = 1_000
    @divisible_by = [3, 5]

    def self.answer
      (1...@max).to_a.inject(0) do |sum, number|
        sum += number_or_zero(number)
      end
    end

    private

    def self.number_or_zero(number)
      is_evenly_divisible?(number) ? number : 0
    end

    def self.is_evenly_divisible?(number)
      @divisible_by.any? { |divisor| number % divisor == 0 }
    end
  end
end
