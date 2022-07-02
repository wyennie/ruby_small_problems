=begin
Write a method that takes an array of numbers and then returns the sum
of the sums of each leading subsequence for that array. You may assume
that the array always contains at least one number.
- method takes an array of numbers
- must return sum of each leading subsequence in array

EXAMPLES
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

DATA STRUCTURES / ALGORITM
-create holding_pen array
[] <= holdingdd_pen
-create array of sums
[] <= sums
-interate through the array
  -push each number into holding_pen
  -call inject(:+) on holding pen and push the sum into sums
-lastly call inject(:+) on sums
=end
def sum_of_sums(numbers)
  holding_pen = []
  sums = []

  numbers.each do |number|
    holding_pen << number
    sums << holding_pen.inject(:+)
  end

  sums.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35