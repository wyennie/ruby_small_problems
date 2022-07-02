=begin
Write a method that takes a single integer as an argument, and dreturns the next featured number
that is greater than the argument. Return an error message if there is no next featured number.

PROBLEM
- featured number:
  - odd number
  - multiple of 7
  - digits occur only once
- must return the next featured number
  - or error if there is none

EXAMPLES
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DATA STRUCTURES
- integers
- booleans
- string
- array

input: integer 
output: integer(next featured number) or ERROR message

ALGORITHM
define method (featured) that takes an integer as an argument (start)
  - create a variable (multiplier) that is equal to the argument (num) divided by 7 and plus 1
    multiplier = ((num / 7) + 1) 
  - create a variable (featured?) that is equal to 7 times the (multiplier) variable
    featured? = multiplier * 7
  LOOP
  - If featured? is:
    - odd?
    - and digits_repeat is false (let's make that a method)
    - if above is true then return featured?
  - else
    - multiplier += 1
=end
# def digits_repeat?(num)
#   digits = num.to_s.chars
#   if digits.any? { |char| digits.count(char) > 1 }
#     return true
#   else
#     return false
#   end
# end

def digits_repeat?(num)
  digits = num.to_s.chars
  digits == digits.uniq
end

def featured(num)
  multiplier = (num / 7) + 1
  feature = multiplier * 7
  loop do
    break if feature.odd? && digits_repeat?(feature)
    break if feature >= 9_999_999_999
      multiplier += 1
      feature = multiplier * 7
  end
  if feature >= 9_999_999_999
    return "There is no possible number that fulfills those requirements"
  else
    feature
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987)# == 1_023_456_987
# # p 
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# p digits_repeat?(1234)