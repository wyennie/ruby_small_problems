=begin
Write a method that computes the difference between the square of the sum of the first n positive
integers and the sum o fthe squared of the first n positive integers

PROBLEM
input: integer
ouptut: integer (difference between the square of the sum of the first n even integers and the first
n even integers squared)

- the first even integer is 1

EXAMPLES
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

DATA STRUCTURES
- integer
- array

ALGORITHM
define method (sum_square_difference) that takes an integer (num)
  - make a variable (numbers) equal to an array of the first (num) even numbers
    (use method (#even_numbers) that takes the (num) as an argument and returns the array)
  - subtract (#sum_square) from (#square_sum)
=end
# def square_sum(arr)
#   arr.reduce(:+) ** 2
# end
# p square_sum()
# def sum_square(arr)
# end

# def even_numbers(num)
#   first = []
#   1.upto(num) { |n| first << n }
#   first
# end

def sum_square_difference(num)
  first = []
  1.upto(num) { |n| first << n }
  (first.reduce(:+) ** 2) - (first.map { |n| n ** 2 }.reduce(:+)) 
end 

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
