require 'pry-byebug'
=begin
Write a method that returns true if the word passed in as an argument can be spelled from the 
following set of blocks:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

PROBLEM
- the argument is a string
- the string can only have characters from the blocks
- once a character from a block has been matched with a character from the argument string, that
  block has been 'used' and cannot be used again to match a characater from a string

EXAMPLES
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURES
- array?
- string
- boolean

ALGORITHM
't', 'r', 'e', 'e'

=end
# def block_word?(word)
#   blocks = {['b', 'o'] => 0, ['x', 'k'] => 0, ['d', 'q'] => 0, ['c', 'p'] => 0, ['n', 'a'] => 0,
#                   ['g', 't'] => 0, ['r', 'e'] => 0, ['f', 's'] => 0, ['j', 'w'] => 0, ['h', 'u'] => 0,
#                   ['v', 'i'] => 0, ['l', 'y'] => 0, ['z', 'm'] => 0}
#   letters = word.downcase.split('')
#   letters.each do |letter|
#     if blocks[0][0] == letter
#       blocks[0] += 1
#     end
#   end
#   blocks
# end

def block_word?(string)
  blocks = %w( BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  upstring = string.upcase
  blocks.none? { |block| upstring.count(block) >= 2 } 
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
