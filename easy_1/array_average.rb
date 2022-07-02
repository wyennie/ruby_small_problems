=begin
given an array of integers
count the amount of elements in the array
add all the integers in the array together
divide the sum of the integers by the amount of elements in the array
=end

def average(array)
  array.reduce(:+). to_f  / array.count
end
# This now returns floats
p average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
