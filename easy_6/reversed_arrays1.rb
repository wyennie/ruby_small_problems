=begin
PROBLEM
Write a method that takes an array as an argument and reverses its elements in place

Explicit
- the returned array must be the same object as the array that is passed in as an argument
- not allowed to use #reverse or #reverse!

Implicit
- assume that the argument will always be an array

EXAMPLES
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

DATA STRUCTURE
['blah','bloo',bleep'] <- argument
[] <- temporary storage
we pop each element out of argument and then push it into the storage array
[] <- argument
['bleep','bloo','blah'] <- temporary storage
finally we shift each element out of storage and push it back into the argument
['bleep','bloo','blah'] <- argument
[] <- storage

ALGORITHM
DEF reverse! takes an array as argument
  SET storage as empty array
  LOOP
    break if argument is empty
    push argument.pop into storage
  LOOP
    break if storage is empty
    push storage.shift into argument
  RETURN argument
=end
def reverse!(array)
  storage = []

  loop do
    break if array.empty?
    storage.push(array.pop)
  end

  loop do
    break if storage.empty?
    array.push(storage.shift)
  end

array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true
p ''
p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true
p ''
p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true
p ''
p list = []
p reverse!(list) == [] # true
p list == [] # true