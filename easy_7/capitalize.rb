=begin
PROBLEM
Write a method that takes a single argument and returns a new string that contains
the original value of the argument with the first character of every word capitalized
and all other letters lowercase
Assume that words are any sequencce of non-blank characters

Explicit
-the argument is always one string
-should return a new string
  -capitalize the first letter of every word in the argument
  -all other letters lowercase
-a word is a sequence of non-blank characters

EXAMPLES
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

DATA STRUCTURES / ALGORITHM
'four score' <= argument
create new_string as a blank string
new_string = ''
lets split the string into an aray of words
['four', 'score'] <= words_array
now we iterate through the words_array
  -call the capitalize method on each word then concat with new_string

-that didn't work
  - get rid of the new_string and the concat method
  -use capitalize! this time
  -pass the words_array to #join(' ')
=end

# def word_cap(string)
#   words_array = string.split
#   words_array.each(&:capitalize!)
#   words_array.join(' ')
# end

# def word_cap(string)
#  words = string.split
 
#  words.map do |word|
#   word.downcase!
#   word[0] = word[0].upcase
#  end
 
#  words.join(' ')
# end

def word_cap(string)
  lowercase = []
  lowercase.push('a'..'z')
  uppercase = []
  uppercase.push('A'..'Z')
  words = string.split

  words.map do |word|
    word.chars.map do |letter|
      lower_index = lowercase.find_index(letter)
      upper_index = uppercase.find_index(letter)
      
      letter.gsub!(letter, lowercase[lower_index]) if upper_index
      
    end

    lower_index = lowercase.find_index(word[0])
    upper_index = uppercase.find_index(word[0])
    word[0].gsub!(lowercase[lower_index], uppercase[upper_index])
  end

  words.join(' ')
end
      

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
