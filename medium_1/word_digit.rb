=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence
of the words 'zero', 'one', 'two', ect. up to 'nine'

PROBLEM
-replace the lettered numbers with digit string( 'two' == '2')
- must return a string
- method only takes a string

EXAMPLES
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

DATA STRUCTURES
- string
- array

ALGORITHM
input => string           "Call my number: one one two seven"
output => new string  "Call my number: 1 1 2 7"

-def method (word_to_digit) that takes a string as an argument (string)
  - calle gsub! on th estring for each number letter/didgit pair
=end
# def word_to_digit(string)
#   string.gsub!(/\bone\b/, '1')
#   string.gsub!(/\btwo\b/, '2')
#   string.gsub!(/\bthree\b/, '3')
#   string.gsub!(/\bfour\b/, '4')
#   string.gsub!(/\bfive\b/, '5')
#   string.gsub!(/\bsix\b/, '6')
#   string.gsub!(/\bseven\b/, '7')
#   string.gsub!(/\beight\b/, '8')
#   string.gsub!(/\bnine\b/, '9')
#   string
# end
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

# def word_to_digit(string)
#   DIGIT_HASH.each do |key, value|
#     string.gsub!(/\b#{key}\b/, value)
#   end
#   string
# end

#upercase and capital words
# def word_to_digit(string)
#   DIGIT_HASH.each do |key, value|
#     string.gsub!(/\b#{key}\b/i, value) 
#   end                                                 
#   string
# end

# spces between consecutive numbers taken out
def word_to_digit(string)
  DIGIT_HASH.each do |key, value|
    string.gsub!(/\b#{key}\b/i, value) 
  end
  until string.match?(/(\d+)(\s+)(\d+)/) == false
    string.gsub!(/(\d+)(\s+)(\d+)/, '\1\3')     
  end
  string.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')  # format 10-digity number to phone number format (...) ... - ...
  string
end

p word_to_digit('Please call me at six seven two five five five one two three four. Thanks.')
