=begin
Given the array:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are words that have
the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

PROBLEM
-fill arrays with anagrams from the given words array
-anagrams are words with the same exact lettters but in a different order

DATA STRUCTURES
-array
-string
-boolean
-integer

ALGORITHM
-define a method (anagram_finder) and give it one parameter (word_list) that should accept an
  array of strings as an argument
  -create an array (sorted_anagrams) that's empty
  -iterate through the argument (word_list)
    -IF the current word is included in the sorted_anagrams array then skip to the next iteration
      -create an array (anagrams) that is empty
      -iterate through the original argument(word_list) again
        -creat an array(outer_word) out of the letters form the current word of the outer block
          -and sort it
        -create an array(inner_word) out of the letters from the current word of the inner block
          -and sort it
        -compare the outer_word to the inner_word
          -if true then push the current word of the inner block to the anagrams array and to the
            sorted_anagrams array
  - print word_list
=end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
                'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                'flow', 'neon']

def anagram_sorter(word_list)
  sorted_anagrams = []

  word_list.each do |outer_word|
    next if sorted_anagrams.include?(outer_word)
    anagrams = []

    word_list.each do |inner_word|
      outer = outer_word.split('').sort
      inner = inner_word.split('').sort
      if outer == inner
        anagrams << inner_word
        sorted_anagrams << inner_word
      end
    end

    p anagrams
  end
end

anagram_sorter(words)
