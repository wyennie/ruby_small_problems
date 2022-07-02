=begin
Problem:
Write a method that takes an array of numbers, and returns
an array with the same numbers of elements, and each 
element has the running total from the original array.
- the argument is an array of integers
- each element of the new array is the sum of the
  elements of the old array up to that element

Test:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data Structures:
we'll iterate through the input array and
after some maths, push the answers to our 
running_totals array

Algorithm:
- iterate through the input_array
  - sum element 0 to current element (use a range?)
    - push this sum to our running_totals array
- return the running_totals array

Code:
=end
def running_total(input_array)
  total = 0
  input_array.map { |num| total += num }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])