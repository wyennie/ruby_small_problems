=begin
PROBLEM
Write a method that takes an array of integers, multiplies all the
numbers together, divides the result by the number of entries in
the array, and then prints the result rounded to 3 decimal places.
Assume the array is not empty

-assume an array of integers
- print results to the 3 decimal place

EXAMPLES
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

DATA STRUCTURE / ALGORITHM
math stuff
-call inject(:*) on OG array 
  - convert anser to float
    - divide that by OG array size
      -call round(3) on that
        -print it
=end
def show_multiplicative_average(array)
  multiplied = array.inject(:*)
  divided = (multiplied.to_f) / (array.size)
  print "The result is " + format('%.3f', divided)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
puts
show_multiplicative_average([6])                   # => The result is 6.000
puts
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
puts
