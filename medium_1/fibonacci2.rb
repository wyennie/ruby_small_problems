require 'benchmark'

def fibonacci_1(n)    # This is what I came up with
  sequence = [0, 1]
  
  until sequence[n] != nil
    sequence << (sequence[-1] + sequence[-2])
  end
  sequence[n]
end

def fibonacci_2(nth)  # This is the (faster) LS solution
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
p Benchmark.measure { fibonacci_1(100_001) }# => 4202692702.....8285979669707537501`
puts''
p Benchmark.measure { fibonacci_2(100_001) }