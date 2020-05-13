module Euler
  module Solution2
    @previous    = 1
    @current     = 1
    @accumulator = 0
    @max         = 4_000_000

    class << self
      def answer
        accumulate
      end

      private

      def accumulate
        return @accumulator if at_max?

        add_if_even
        advance_fibonacci_sequence

        accumulate
      end

      def add_if_even
        @accumulator += @current if @current.even?
      end

      def advance_fibonacci_sequence
        @current, @previous = @current + @previous, @current
      end

      def at_max?
        @current >= @max
      end
    end
  end
end
