=begin
Create a method that takes two integers as arguments. The first argument is a count, and the
second is the first number of a sequence that your method will create. The method should return an
Array that contains the same number of elements as the count argument, while the values of each
element eill be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting
number can be any integer value. If the count is 0, an empty list should be returned.

PROBLEMS
-method takes two integer arguments, count is the first and the second is the first in  the sequence
-return an array
-the first index of the array shoud be filled with multiples of the starting number
  -the starting number is the second argument
  -the array should be filled with sequential multiples of the second argument and should be the
    size of the first argument
=end
def sequence(count, n)
  results = []

  while count > 0
    results.unshift(n * count)
    count -= 1
  end
  
  results
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
