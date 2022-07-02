require 'pry-byebug'
=begin
Write a recursive method that computes the nth fibonacci number, where nth is an argument to the 
method

PROBLEM
- fibonacci sequence always starts with 1, 1
- the argument is the nth in number in the sequence

EXAMPLES
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

DATA STRUCTURES
input: inter(n)
output: value of nth number in fibonacci sequence(an integer)
- array does not work since using recursion the array will be reset everytime the method is called
- integer


ALGORITHM
# - define a method (fibonacci) that takes a single integer (n) as an argument
#   - create an array (sequence) with the values 1 and 1 at the first to positions [1, 1]
#   - now add the last two index values in (seaquence) array together and push the value into 
#     the sequence array
#   - check IF the sequence arrays index (n-1) has a value that doesn't equal nil
#     - if the value doesn't equal nil then return it
#     - else call the method (finbonacci(n))
- define a method (fibonacci) that takes a single integer (n) as an argument
  - if n is less than two
    - then we return 1
  - else 
    - fibonacci(n - 1) + fibonacci(n - 2)
=end

# def fibonacci(n)
#   if n <= 2
#     return 1
#   else
#     fibonacci(n - 1) + fibonacci(n - 2)
#   end
# end

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
p fibonacci(3000)
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
