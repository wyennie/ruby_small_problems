=begin
PROBLEM
Write a method that takes a non-empty string argument, and returns the middle character or
characters of the argument. If the argument has an odd length, you should return exactly one
character. If the argument has an even lengthm you should return exactly two characters.

EXAMPLES
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

DATA STRUCTURES / ALGORITHM
-def center_of
  -SET results = []
  SET middle = string.size / 2
  -SET chr to string.chars
   ['L', 'a', 'u', 'n', 'c', 'h']
    -push chr[middle] to results
    -if even push chr[middle -1] to results
-results
=end
def center_of(string)
  results = ''
  middle = string.size / 2
  characters = string.chars
  results << characters[middle -1] if (string.size).even?
  results << characters[middle]
  results
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
