=begin
Problem:
Write a method that takes a positive integer or 0, and converts it into a string
- not allowed to use standard conversion methods that Ruby has, 
  ie: #to_i, Integer(), ect
- can assume that the argument is a positive integer or 0

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data Sructures
Hash collection of integers that equal there strin equivalents:
{
  1 => '1'
  2 => '2'
  3 => '3'
}

we'll need an array to dump the strings into as we build the string version of the number
[]<= empty at first
['2', '3', '2']  <= fills up with the digits of our target number in order(or possibly reverse order)

Algorithm:
-DEF integer_to_string give argument should be integer
-count the length of the integer
=end
TRANSLATOR = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(integer)
  number_string = ''
  exponent = 0

  loop do
    exponent += 1
    divisor = exponent == 1 ? 1 : 10**(exponent - 1)

    digit = ((integer % (10**exponent)) / divisor)
    number_string << TRANSLATOR[digit]
    break if (integer / (10**exponent)) == 0
  end

  number_string.reverse
end

p integer_to_string(-4321)
p integer_to_string(0)
p integer_to_string(5000)

=begin
My method can be condensed into
def integer_to_string(int)
  int.digits.join.reverse
end
but I think that join is against the rules. I couldn't digure out how to count
the given number in order to break it. The LS solution is one that I did not
think of, I'm no tsure how #divmod works and I'm not used to the format
that they used in order to assign two variables at once.
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=end