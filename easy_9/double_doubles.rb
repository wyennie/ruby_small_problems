=begin
A double number is a number with an even number of digits whose left-side
digits are exactly the same as its right-side digits. 
ex 44, 3333, 103103, 7676 are double doubles
    444, 334433, 107 are not

    Write a method that returns 2 times the number provided as an argument, unless
the argument is a double number; double numbers should be returned as-is

PROBLEM
-double doubles are numbers whose digits on the right side is the same as its left side
-return the argument(a number) multiplied by 2
-if the argument(a number) is a double double then return it without multiplying it
- the argument and the return value should be an integer

EXAMPLES
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

DATA STRUCTURES
-integer
-string

ALGORITHM
-define the method (twice) give it one parameter (num)
  -convert the number to a string and name it (num_str)
  -measure the number of characters in the string and divide that by two, name that (half)
  -now well cut the string in two halfs and see if they match
    - if they do we'll return the num
    - if not then we'll multiply the num by two and return that
=end
def twice(num)
  num_str = num.to_s
  half, even = num_str.size.divmod(2)
  left_side = num_str.slice(0, half)
  right_side = num_str.slice(half, half)
  left_side == right_side && even == 0 ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) #== 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
