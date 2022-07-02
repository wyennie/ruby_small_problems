=begin
PROBLEM
Write a method that takes an array of strings, and returns an array of those
same strings, except with the vowels removed
-vowels (aoeui)

EXAMPLES
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

DATA STRUCTURE
Iterate through og array
  take vowels away
push voweless word to new array

ALORITHM
DEF remove_vowels and have it take an array of strings as an argument(strings_array)
SET vowelless_array to an empty array
ITERATE through strings_array
  -delete the vowels(a,e,i.o.u) from each word
  push the new word to the vowelless_arraay
return the vowelles array

=end
#This is the way I first solved it
def remove_vowels(strings_array)
  vowelless_array = []

  strings_array.map do |word|
    wrd = word.delete('a' 'e' 'i' 'o' 'u' 'A' 'E' 'I' 'O' 'U')
    vowelless_array << wrd
  end

  vowelless_array
end
#Then after refactoring
def remove_vowels(strings_array)
  strings_array.map { |word| word.gsub(/[aeiou]/i, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


