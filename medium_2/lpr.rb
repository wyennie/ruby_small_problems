=begin
Write a method that takes a string and then returns a hash that contains 3 entries:
- one that represents the percentage of characters in the string that are lowercase
- one that represents the percentage of characters in the string that are upercase
- and one that represents the percentage of characters in the string that are neither
  upercase or lowercase\

PROBLEM
input: string
output: hash (w/ % of uppercase and lowercase letters, and non-letters)
- method takes a string as argument, that contains at least one letter
- calculate percentages of uppercase letters, lowercase letters, and non-letters
  - this should be returned in a hash

EXAMPLES
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

DATA STRUCTURES
- numerics
  - floats
- strings
- hash

ALGORITHM
- define method (letter_percentages) and give it a single string as an argument (string)
  - create a hash called percentage w/ lowercase, uppercase, and neither all assigned to 0
    { lowercase: 0, uppercase: 0, neither: 0 }
  - create a variable (total_size) equal to the size of the string argument converted to a float
    (can use string.size.to_f)
  - create variable (lowercase) equal to
    - count the lowercase letters and divide it by the (total_size) variable
      - multiply that by 100
  - create variable (uppercase) and (neither) and do the same as above
  - assign the values to their hash key counterparts
  return the hash
=end
def letter_percentages(string)
  total_size = string.size.to_f
  lowercase = (string.count('a-z') / total_size) * 100
  uppercase = (string.count('A-Z') / total_size) * 100
  neither = 100 - (lowercase + uppercase)
  { lowercase: lowercase.round(1), uppercase: uppercase.round(1), neither: neither.round(1) }
end

p letter_percentages('abCdef 123')# == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
