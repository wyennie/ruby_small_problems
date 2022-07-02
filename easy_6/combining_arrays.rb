=begin
PROBLEM
Write a method that takes two arrays and returns an array that contains all the
values from the argument arrays. There should be no duplicate values in the 
return array, even if there are in the original.

Explicit
-no duplicate values in the return array

Implicit
-the arguments will be array

EXAMPLES
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

DATA STRUCTURES/ALGORITHM
DEF merge that takes two arrays as arguments (array_1, array_2)
  SET new_array to array_1.concat(array_2)
  new_array.uniq
=end
def merge(array1, array2)
  new_array = array1.concat(array2)
  new_array.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
