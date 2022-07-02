=begin
PROBLEM
Write a method that returns a list of all substrings of a string. The returned list should be
ordered by where in the string the substring begins. This means that all substrings that 
start at position 0 should come first, then all substrings that start at position 1, and so on.
Since multiple substrings will occur at each position, the substring at a given position should
be returned in ordert from shortest to longest.
You may (and should) use the #leading_substrings method you wrote in the previous exercise

def leading_substrings(string)
  set_substrings = []
  letters = string.chars
  letters.each_with_index do |char, index|
    set_substrings << letters[0..index].join
  end
  set_substrings
end

EXAMPLES
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA STRUCTURES / ALGORITHM
- make an empty array
[] <= final_array
- iterate through string argument
  -slice current index to string-1
    -use that string as an argument for #leading_substrings
      -push #leading_substrings value into final_array
final_array.flatten
=end

def leading_substrings(string)
  set_substrings = []
  letters = string.chars
  letters.each_with_index do |char, index|
    set_substrings << letters[0..index].join
  end
  set_substrings
end

def substrings(string)
  final_array = []
  shortstring = ''
  counter = 0
  loop do
    break if counter == string.size
    temp = string[counter..(string.size-1)]
    final_array.push(leading_substrings(temp))
    counter += 1
  end
  final_array.flatten
end

p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
