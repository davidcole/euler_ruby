module Euler
  module Solution2
    @previous_number = 1
    @accumulator     = 0
    @max             = 4_000_000

    def self.answer
      accumulate
    end

    private

    def self.accumulate(current_number = 1)
      return @accumulator if current_number >= @max

      @accumulator += current_number if current_number.even?

      current_number, @previous_number = current_number + @previous_number, current_number

      accumulate(current_number)
    end
  end
end
