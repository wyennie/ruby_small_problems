=begin
Write a method that takes a string and returns the next to last word in it.
- a word is a sequence of non-blank characters
- the string argument has at least two words

EXAMPLES
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

DATA STRUCTURES / ALGORITHM
split the argument
['last', 'word']
return value of the array index -2

def penultimate(string)
  (string.split)[-2]
end
=end

   def penultimate(string)
  words = string.split
  middle, zero = (words.size).divmod(2)
  zero == 0 ? ("#{words[middle -1]} #{words[middle]}") : words[middle]
end

p penultimate('last word')# == 'last'
p penultimate('Launch School a is great!')# == 'is'