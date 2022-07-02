=begin
Write a method that determines and returns the ASCII string value of the
string that's passed in as an argument.
- the ASCII string value is the sum of th ASCII values of every
  character in the string

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Data Structure:
-spliting up the string characters and putting them into an array
  will make this easier to work with
'Four Score'
['F', 'o', 'u', 'r', ' ', 'S', 'c', 'o', 'r', 'e']

Algorithm:
DEF ascii_value with a string for as argument
SET string_value variable to 0
SET string_array the string characters in an array
ITERATE through the array
  - with each iteration add the ASCII value of the character to 
    the string_value
RETURN the string_value

Code:
=end
def ascii_value(string)
  string_value = 0
  string_array = string.chars

  string_array.each { |char| string_value += char.ord }
  string_value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

=begin
Further Exploration:
char.ord.mystery == char
The mystery method is Integer#chr
If you try this with a longer string, #ord only affects the first element in the string,
so you'd have to iterate through the string and get each ASCII value and then
save them(to an array?)/ Then you could iterate through the collection that 
you've saved and use #chr to convert them back and psh that back into a string.
=end