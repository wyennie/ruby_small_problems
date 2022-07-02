=begin
PROBLEM
Write a method that takes a string, and returns a new strings in which every character
is doubled
-method takes a string as an argument
-must return new string
-there should be double the characters in the new string as the old string

EXAMPLE
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

DATA STRUCTURES / ALGORITHM
-DEF repeater that takes a string
  -SET new_string = ''
  -iterate through #each_char of the string
    -multiply each chr by 2 and push to new_string
=end
def repeater(string)
  new_string = ''
  string.each_char do |chr|
    new_string << chr * 2
  end
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''