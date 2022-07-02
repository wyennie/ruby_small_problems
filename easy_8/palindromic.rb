=begin
PROBLEM
Write a method that returns a list of all substrings of a string that are palindromic.
The return value should be arrnged in the same sequence as the substrings appear
in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the #substrings method you wrote in the prvious exercise.

For the prposes of this exercise, you should consider all characters and pay attention
to case; that is, "AbcbA" is a palindrime, but neither "Abcba" nor "Abc-bA" are. In 
addition, assume that single characters are not palindromes.

EXAMPLES
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

DATA STRUCTURE / ALGORITHM
-create an array of all the substrings in the string (use the #substrings method)
[s, su, sub, sub-, ect] <= pieces
-iterate through the array (#select probably)
  -if string == string reverese, then it's a chosen one
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

# def palindromes(string)
#   substrings(string).select { |str| str == str.reverse && str.size > 1 }
# end
# FURTHER EXPLORATION: ignore non-alphanumeric characters

def palindromes(string)
  alphas = substrings(string).map do |word|
    word.gsub(/\W/, '') #<= i chose to replace non word characters with nothing, i could add whitespace. I could also use /[^a-z0-9]/i if i need to ignore underscores
  end
  alphas.select { |str| str == str.reverse && str.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
