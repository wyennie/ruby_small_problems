=begin
PROBLEM
Write a method that takes a string and then returns a hash that contains 3 entries:
-one represents the number of lowercase letters in the string
-one represents the number of uppercase letters in the string
-one represents the the number of characters that are neither of the other characters

EXAMPLES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

DATA STRUCTURES / ALGORITHM
'abCdef 123' <= given string
first we create an empty hash
{} <= we'll call it case_tracker
assign each key=>value pair using the count method
case_tracker[lowercase] = 'abCdef 123'.count('a-z')
ect
ect
return case_tracker
=end
def letter_case_count(string)
  case_tracker = {}
  case_tracker[:lowercase] = string.count('a-z')
  case_tracker[:uppercase] = string.count('A-Z')
  case_tracker[:neither] = string.count('^a-zA-Z')
  case_tracker
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
