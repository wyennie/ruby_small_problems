=begin
Write a method that takes a string as an argument, 
and returns an Array that contains every word from
the string, to which youl have apended a space
and the word length.

You may assume that words in the string are seperated
by exactly one space, and that any substring of non-space
characters is a word.

PROBLEM
-method has a single parameter that takes a string argument
-each word in the string should be returned and concatenated with a space and the numericsal value of the word length 
  - this should all be pushe dto an array
-words are characters seperated by exactly one space
  - any substring of non-space characters is a word

EXAMPLES
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

DATA STRUCTURES
-array
-string
-integer

ALGORITHM
-define the method (word_lengths) and assign one parameter to it (string)
  -turn the string into an array of words (results) using the #split method
  -iterate through the new array
    -concatenate the current word with a space and the length of the word
=end
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []