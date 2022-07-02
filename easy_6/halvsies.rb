=begin
PROBLEM
Write a method that takes an array as an argument and returns two arrays(as a pair
of nested arrays) that contain the first half and second half of the original array.
If there's an odd number of elements, the middle element should be in the first half

Explicit
- the returned array must be an array with two arrays nested inside
  - if there's an odd amount of elements the first array gets an extra element

Implicit
- the argument will be an array

EXAMPLES
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

DATA STRUCTURES
[1,2,3,4,5,6,7] <= original_array
we'll create three empty arrays to build up
[] <= first_half
[] <= second_half
[] <= final_array
we use count on the origninal array use divmod on that to get the size_limit of each half
  -remember to add +1 to the first_half_limit if the second divmod value is > 0
loop through the original array shift and push value to to first half
  -until its size is equal to size limit
[1,2,3,4] <= first_half
and push it into the final_array
[[1,2,3,4]] <= final_array
loop do the same as above for the second half
[5,6,7] <= second_half
push to final_array
[[1,2,3,4], [5,6,7]] <= final_array

ALGORITHM
DEF halvisies pass original_array as argument
  SET first_half as empty array
  SET second_half as empty array
  SET final_array as empty array
  SET limit, uneven = (original_array.count)divmod(2)
  If uneven equals 0 then SET first_limit to limit ELSE SET first_limit to (limit +1)
  SET second_limit to limit
  LOOP until first_limit equals 0
    push the element at index 0 from original_array to first_half
    first_limit -= 1
  LOOP until second_limit equals 0
    push the element at index 0 from the original array to second_half
    second_half -= 1
  PUSH first_half to final_array
  PUSH second_half to final_array
  RETURN final_array
=end
def halfer(full, empty, limiter)
  loop do
    break if limiter == 0
    empty.push(full.shift)
    limiter -= 1
  end
  empty
end

def halvsies(original_array)
  first_half = []
  second_half = []
  final_array = []

  limit, uneven = (original_array.count).divmod(2)
  uneven == 0 ? first_limit = limit : first_limit = (limit + 1)
  second_limit = limit

  halfer(original_array, first_half, first_limit)
  halfer(original_array, second_half, second_limit)

  final_array.push(first_half, second_half)
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
