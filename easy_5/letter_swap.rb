=begin
Given a string of words separated by spaces, write a method that takes
this string of words and returns a string in which the first and 
last letters of every word are swapped
- words contain at least one letter
- strings contain at least one word

implicit
- don't worry about numbers and special characters
- its definetely case sensitive

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data Structure:
Split string into array of words
['Oh', 'what', 'a', 'wonderful', ect]

Algorithm:
DEF swap method give it a string argument
SET word_array by splitting the string
SET word_string as empty string
ITERATE through the wor_array w/ map
  -SET first_letter to word.slice!(0)
  -SET last_letter to word.reverse.slice!(0)
  - word.concat(first_letter)
  -word.prepend(last_letter)
  - push word + empty space into word_string
That should do it
CODE:
=end
def swap(string)
  word_array = string.split(' ')
  
  word_array.map do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  word_array.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')