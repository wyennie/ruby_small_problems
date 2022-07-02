=begin
PROBLEM
Write a method that takes a positive integer as an argument and returns that number with its digits reversed

-method takes an integer
-must return that number with digits reversed
-No leading zeros!

EXAMPLES
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

DATA STRUCTURES / ALGORITHM
DEF reversed_number to take an integer (12345)<= example arg
  - create empty string
     rev = ''
  -SET integer and call #to_s and #split 
    now we have array of number strings ['1', '2', '3', '4', '5']
  -Iterate through the array
    -IF rev.empty? && chr == 0
      next
    ELSE
      rev.unshift(chr)
  -rev.to_i
BAM!
=end
def reversed_number(num)
  rev = ''
  stringy_digs = num.to_s.split('')
  stringy_digs.each do |chr|
    rev.empty? && chr == 0 ? next : rev.prepend(chr)
  end
  rev.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
