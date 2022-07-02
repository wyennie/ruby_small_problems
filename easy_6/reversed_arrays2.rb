=begin
PROBLEM
Write a method that takes an array as an argument and returns a new array with the same
elements, but in reverse order. No modifying the original array.

Explicit
-no use of #reverse or #reverse!
-must return a new array w/ list reversed from the argument
-the argument array must not be mutated

EXAMPLES
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

DATA STRUCTURES
we'll need to do some reasignment
[] <- this is our array that we'll build up from our argument array

ALGORITHM
DEF reverse give array as an argument
  SET new_array as an empty array
  SET array_size as the length of the argument array
  SET count to 0
  LOOP
    BREAK if the array_size is equal to count
    SET new_array[-1] = argument_array[count]
    count += 1
  RETURN new_array
=end
# def reverse(array)
#   new_array = []
#   array_size = array.length
#   count = (array.size - 1)
#   index = 0

#   loop do
#     break if count < 0
#     new_array[index] = array[count]
#     count -= 1
#     index += 1 
#   end

#   new_array
# end

def reverse(array)
  array.each_with_object([]) { |ele, rev| rev.unshift(ele) }
end


p reverse([1,2,3,4]) # [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
puts ''
p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true