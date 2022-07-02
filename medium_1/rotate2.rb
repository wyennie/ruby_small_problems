=begin
Write a method that can rotate the last n digits of a number.

PROBLEM
-rotate only the n parts of the last digits
- n is always a positive integer

EXAMPLES
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

DATA STRUCTURES
-integer
-string
-array

input: integer
output: returns new integer

ALGORITHM
-define a method (rotate_rightmost_digits) the first argument being the integer (int) and the
  second being (n) also an integer
  -turn int into a string
  - cut away the last n characters of int
  -pass it into rotate_string as an argument
  -concatenate the two halves of the string back together
  -convert back into an integer

=end
def rotate_rightmost_digits(int, n)
  num_str = int.to_s
  piece = num_str.slice!(-n, n)
  num_str.concat(rotate_string(piece)).to_i
end


def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_array(arr)
  results = arr.clone
  results << results.shift
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3)# == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917