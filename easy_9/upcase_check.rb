=begin
Write a method that takes a string argument, and returns true
if all of the alphabetic characters inside the string are upppercase,
false otherwise. Characters that are not alphabetic should be ignored.

PROBLEM
- method has a single parameter
  - assume the argument is a string
- if every alphabetic character in the argument string is uppercase
  then the method should return true
  - if not it should return false
- we only care about alphabetic characters here, all others are 
  ignored

EXAMPLES
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

DATA STRUCTURES
-string

ALGORITHM
-define the method (uppercase?) and give it one parameter(string)
  -compare the string to the string with upcase called on it
    -the return of the comparison should be sufficient
=end
def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
