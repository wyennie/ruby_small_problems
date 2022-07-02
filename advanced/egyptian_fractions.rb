require 'pry-byebug'
=begin
Two methods:
- one that takes a Rational number as an argument, and returns an array of
  denominators that are part of an Egyptian Fraction representation of a
  number.(egyptian)
- one that takes an array of numbers that are the denominators in an Egyptian
  Fraction representation of a number, and calculates the resulting Rational
  number.(unegyptian)
The Rational class will be necessary

PROBLEM
(egyptian)
input: a Rational number
output: an array of denominators that are part of an Egyptian Fraction
        representation of said Rational number
- an egyption franction is the sum of unit fractions, each of which have a
  unique denominator

(unegyptian)
input: an array of denominators from an egytptian fraction
output: a Rational number


EXAMPLES
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

DATA STRUCTURE
(egyptian)
- integer
- array

ALGORITHM
start by creating an empty array to store our unit fraction denominators
create a variable to represent the unit denominator, start it at 1 
  (the greatest unit fraction is (1/1))
start a loop
now we find the greatest unit fraction (that we haven't already used) that is
  less than our rational number, and we push the denominator into our array of
  denominators
we have to see if we've completed the egyptian fraction, if we iterated through
  denominator array and create an array of unit fractions from the denominator,
  we can add them together to see if the equal our rational number
if our egyptian array is complete, we return the denominator array,
else we add +1 to our denominator variable and keep looping


Code
=end

def unegyptian(egypt_frac)
  # binding.pry
  results = nil
  first = 0
  egypt_frac.each do |numerator|
    if first == 0
      first = 1
      results = Rational(1, numerator)
    else
      results += Rational(1, numerator)
    end
  end
  results
end

def egyptian(rational_num)
  denominators = []
  denominator = 1
  loop do
    sum = denominators.map { |den| Rational(1, den) }.reduce(:+)
    if  sum == rational_num
      return denominators
    elsif (rational_num <=> Rational(1, denominator)) == 1 && denominators.empty?
      denominators << denominator
    elsif (rational_num <=> Rational(1, denominator)) == 1 &&
          (sum + Rational(1, denominator)) <= rational_num
      denominators << denominator
    end
    denominator += 1
  end
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p egyptian(Rational(1, 2))
p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)