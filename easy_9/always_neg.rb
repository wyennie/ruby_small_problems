=begin
Write a method that takes a number as an argument. If the argument is
a positive number, return the negative of that number. If the number is 0
or negative, return the original number.

PROBLEM
-argument is an integer
- return negative version of number if positive
- if  0 or less return the argument

EXAMPLES
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

DATA STRUCTURES
-integer
-conditional

ALGORITHM
-def method (negative) and give it a parameter (num)
  -if the number is greater than 0 multiply it by -1 
    - otherwise just return the number
=end
def negative(num)
  num > 0 ? num * -1 : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby