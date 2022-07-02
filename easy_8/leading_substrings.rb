=begin
PROBLEM
Write a method that returns a list of all substrings of a string that start
at the beginning of the original string. The return value should be arranged
in order from shortest to longest substring.

- return an array of substrings

EXAMPLES
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

DATA STRUCTURES / ALGORITHM
-create an empty array
[] <= substrings
-split the characters of the string into an array, you can call #chars on it
['a', 'b', 'c'] <= call it letters
-iterate through letters with each_with index
  -SET substring = ''
  -SET counter = 0
    -LOOP
      -push letters[counter] to substring
      -counter -= 1
      -break if counter < 0
    push substring to substrings
return substrings
=end
# def leading_substrings(string)
#   substrings = []
#   letters = string.chars

#   letters.each_with_index do |char, index|
#     substring = ''
#     counter = 0

#     loop do 
#       substring << letters[counter]
#       counter += 1
#       if counter > index
#         substrings << substring
#         break
#       end
#     end
#   end
#   substrings
# end

def leading_substrings(string)
  substrings = []
  letters = string.chars
  letters.each_with_index do |char, index|
    substrings << letters[0..index].join
  end
  substrings
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
