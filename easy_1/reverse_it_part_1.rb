=begin
given a string
seperate the string into an array of strings
reverse the array of strings
turn the array of strings into a single string
=end

def reverse_sentence(string)
  array = string.split(' ').reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''