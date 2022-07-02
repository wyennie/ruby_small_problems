=begin
PROBLEM
Write a method that takes a number as an argument
-then calculates and returns the index of the first Fibonacci number that has that number of digts

  -Explicit
    - the Fibonacci series is a series of numbers where the first two numbers are always one, and 
      each number after that is the sum of the last two numbers
    -the first Fibonnaci number has index 1 (1 1 2 3 5 8 13 21)

  -Implicit
    - the argument passed to the method is an integer greater than 0

EXAMPLES
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

DATA STRUCTURES
-we should create a fibonacci_array that always starts with [1, 1]
  -check the last index and see if it's string form is equal to the argument
    -if not we add index-1 to index-2 and add that result to the fibonacci_array
[1, 1]  <- fibonacci_array
2 <- argument

1 != (2 converted to a string) length <- in other words the length of the string '2' is not 2, it's 1
  - so (fibonnaci_array[-2] + fibonacci_array[-1]) gets pushed into the fibonacci_array
    [1, 1,  2]
This keeps looping until the value of the the argument equals the value of the index's length when it's 
converted to a string

ALGORITHM
DEF find_fibonacci_index_by_length and pass in an integer as an argument
  SET fibonacci_array as [1, 1] < - the default start of the fibonacci series
  SET index = 1
  
  LOOP
    -SET next_value = fibonacci[-2] + fibonacci[-1]
    -SET target_number to (fibonacci_array[-1].to_s.length) <- last value converted to string and amount of characters
    -fibonacci_array.push(next_value)
    -index += 1
    BREAK if argument is equal to target number
  return index
=end
def find_fibonacci_index_by_length(number)
  fibonacci_array = [1, 1]
  index = 1

  loop do
    target_number = (fibonacci_array[-1].to_s).length
    next_value = (fibonacci_array[-2] + fibonacci_array[-1])

    fibonacci_array << next_value
    index += 1
    break if (number == target_number)
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
