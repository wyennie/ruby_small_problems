=begin
PROBLEM
Write a method that combines two arrays passed in as arguments and
returns a new array that vontains all elements from both array arguments
with the elements taken in alternation
Assume inputs arrays are not empty and are the same size

Explicit
-two arrays are equal size
-the new array must have alternating elements from each of the input arrays

EXAMPLES
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

DATA STRUCTURES / ALGORITHM
arguments:
[1, 2, 3] <= array1
['a', 'b', 'c'] <= array2
method:
lets make our new array first
[] <= new_array
let's make a variable that represents the index of the argument arrays
old_index = 0
now make a varible that will represent the index in the new_array
new_index = 0
lets set a limiter for our loop
limiter = (array1.size + array2.size)

next we'll start a loop that breaks when new_index == limiter
  assign array1[index] to new_array[new_index]
  [1] <= new_array
  add + 1 to new_index
  new_index += 1
  assign array2[index] to new_array[new_index]
  [1, 'a'] <= new_array
  add +1 to new_index and old_index
  new_index += 1
  old_index += 1
=end

# def interleave(array1, array2)
#   new_array = []
#   old_index = 0
#   new_index = 0
#   limiter = (array1.size + array2.size)

#   loop do
#     break if new_index == limiter
#     new_array[new_index] = array1[old_index]
#     new_index += 1
#     new_array[new_index] = array2[old_index]
#     new_index += 1
#     old_index += 1
#   end
  
#   new_array
# end

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) # [1, 'a', 2, 'b', 3, 'c']